//
//  SecondViewController.swift
//  My Task List
//
//  Created by Chaos John on 6/7/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var taskName: UITextField!
    @IBOutlet var taskDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func clickAddBtn(sender: UIButton) {
        println("click the button")
    }
    
}

