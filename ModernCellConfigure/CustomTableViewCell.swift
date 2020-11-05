//
//  CustomTableViewCell.swift
//  ModernCellConfigure
//
//  Created by Yuki Shinohara on 2020/11/05.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    //stateがupdateされるたびに呼ばれる
    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)
        var configuration = defaultContentConfiguration().updated(for: state)
        
        //デフォルトの表示
        configuration.text = "Original"
        configuration.image = UIImage(systemName: "bell")
        
        var backgroundConfig = backgroundConfiguration?.updated(for: state)
        backgroundConfig?.backgroundColor = .green
        
        //stateがupdateされた時の値
        if state.isHighlighted || state.isSelected {
            configuration.imageProperties.tintColor = .yellow
            configuration.textProperties.color = .link
            configuration.text = "State Changed!"
            backgroundConfig?.backgroundColor = .systemPink
        }
        
        //updateされたconfigを代入
        contentConfiguration = configuration
        backgroundConfiguration = backgroundConfig
    }
}
