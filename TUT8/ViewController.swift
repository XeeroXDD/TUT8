//
//  ViewController.swift
//  TUT8
//
//  Created by Felix KHNEN on 30/9/2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        cell.textLabel?.text = units[indexPath.row]
        return cell
    }
    

    
    @IBOutlet weak var tableview: UITableView!
    let units = ["mobile Apps Development", "Computer Graphics", "Technologies for Web Development", "Object Oriented Analysis", "Programming Techniques", "Computer Netrworking"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
        // Do any additional setup after loading the view.
    }

}

