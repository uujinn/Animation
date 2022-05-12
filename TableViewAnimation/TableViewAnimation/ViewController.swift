//
//  ViewController.swift
//  TableViewAnimation
//
//  Created by 양유진 on 2022/05/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arr: [String] = ["1st", "2nd", "3rd", "4th", "5th"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        tableView.register(UINib(nibName: "SampleCell", bundle: nil), forCellReuseIdentifier: "SampleCell")
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func pressedToRefresh(_ sender: Any) {
        print(arr)
        self.arr = arr.shuffled()
        
        self.tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath) as! SampleCell
        
        cell.label.text = arr[indexPath.row]
        
        return cell
    }
    
    
}
