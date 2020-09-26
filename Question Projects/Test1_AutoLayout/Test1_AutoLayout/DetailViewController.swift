//
//  DetailViewController.swift
//  Test1_AutoLayout
//
//  Created by Softcake on 25/4/2561 BE.
//  Copyright © 2561 AppMan. All rights reserved.
//

import Foundation
import UIKit

class DetailMessageBoxWithButtons: UIViewController {
    let messageList: [String] = TestData.messageList
    
    @IBOutlet weak var messageLabel: DesignableLabel!
    @IBOutlet weak var segmentedControl: DesignableSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = messageList[0]
        title = "Message box with buttons"
    }
    
    @IBAction func didPress(segmentControl: DesignableSegmentedControl) {
        let index = segmentControl.selectedSegmentIndex
        messageLabel.text = messageList[index]
    }
}

class DetailTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let datasourceList: [[[String: Any]]] = TestData.datasourceList
    var selectedDatasourceList: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedDatasourceList = datasourceList[0]
        title = "Table view"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedDatasourceList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DetailCell = tableView.dequeueReusableCell(withIdentifier: "detailTableViewCell", for: indexPath) as! DetailCell
        
        cell.nameLabel.text = selectedDatasourceList[indexPath.row]["name"] as? String
        cell.groupLabel.text = selectedDatasourceList[indexPath.row]["group"] as? String
        cell.OCClassLabel.text = selectedDatasourceList[indexPath.row]["OCClass"] as? String
        cell.PAClassLabel.text = selectedDatasourceList[indexPath.row]["PAClass"] as? String
        
        return cell
    }
    
    @IBAction func didPress(segmentControl: DesignableSegmentedControl) {
        let index = segmentControl.selectedSegmentIndex
        selectedDatasourceList = datasourceList[index]
        tableView.reloadData()
    }
}

class DetailScrollView: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textView: UITextView!
    let textList: [String] = TestData.textList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = textList[0]
        title = "Scroll view"
    }
    
    @IBAction func didPress(segmentControl: DesignableSegmentedControl) {
        let index = segmentControl.selectedSegmentIndex
        textView.text = textList[index]
        scrollView.setContentOffset(CGPoint.zero, animated: false)
    }
}
