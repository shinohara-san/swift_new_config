//
//  ViewController.swift
//  ModernCellConfigure
//
//  Created by Yuki Shinohara on 2020/11/05.
//

import UIKit
//real reasons 7:39

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(CustomTableViewCell.self,
                       forCellReuseIdentifier: CustomTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,
                                                               for: indexPath)
            as? CustomTableViewCell ?? UITableViewCell()
        
        return cell
    }
}

