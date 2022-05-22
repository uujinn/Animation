//
//  ViewController.swift
//  TableViewAnimation_ns
//
//  Created by 양유진 on 2022/05/22.
//

import UIKit

class ViewController: UIViewController {

    private let tableView = UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .yellow
    }


}


