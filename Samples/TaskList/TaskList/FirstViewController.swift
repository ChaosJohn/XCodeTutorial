//
//  FirstViewController.swift
//  TaskList
//
//  Created by Chaos John on 6/10/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var taskTable: UITableView!
    
    let cellIdentifier = "mycell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        taskTable.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Returning to view
    override func viewWillAppear(animated: Bool) {
        taskTable.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskManager.tasks.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        ////        cell.text = taskManager.tasks[indexPath.row].name
        //        cell.detailTextLabel?.text = taskManager.tasks[indexPath.row].desc
        //        return cell
        //        println("abc")
        let cell: TableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! TableViewCell
        //        let cell: TableViewCell = TableViewCell()
        cell.name.text = taskManager.tasks[indexPath.row].name
        cell.desc.text = taskManager.tasks[indexPath.row].desc
        return cell
    }
    
    
}

