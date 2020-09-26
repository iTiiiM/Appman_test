//
//  ViewController.swift
//  Test4_UseYourFramework
//
//  Created by Softcake on 25/4/2561 BE.
//  Copyright © 2561 AppMan. All rights reserved.
//

import UIKit
import SimpleSwiftFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var messageTextfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressAction(button: UIButton) {
        CallingFrameworkFunction.alert(message: messageTextfield.text ?? "", viewController: self)
    }
}

