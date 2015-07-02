//
//  SecondViewController.swift
//  TaskList
//
//  Created by Chaos John on 6/10/15.
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
    
    // Events 
    @IBAction func clickAddBtn(sender: UIButton) {
        if taskName.text.isEmpty {
            return
        }
        taskManager.addTask(taskName.text, desc: taskDesc.text)
        self.view.endEditing(true)
        taskName.text = ""
        taskDesc.text = ""
        self.tabBarController?.selectedIndex = 0 
    }
    
    // iOS Touch Function
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    // UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

