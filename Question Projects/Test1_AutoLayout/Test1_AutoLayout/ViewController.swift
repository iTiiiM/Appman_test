//
//  ViewController.swift
//  Test1_AutoLayout
//
//  Created by Softcake on 25/4/2561 BE.
//  Copyright © 2561 AppMan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let typeList: [[String: Any]] = TestData.typeList
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeListCell", for: indexPath)
        cell.textLabel?.text = typeList[indexPath.row]["label"] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let segueIdentifier = typeList[indexPath.row]["segueIdentifier"] as? String {
            performSegue(withIdentifier: segueIdentifier, sender: self)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}

