//
//  TaskManager.swift
//  TaskList
//
//  Created by Chaos John on 6/10/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import UIKit

var taskManager: TaskManager = TaskManager()

struct Task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [Task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(Task(name: name, desc: desc))
    }
    
    override init() {
//        taskManager.addTask("hhhh", desc: "afldsjfal")
//        println("init")
    }
}
