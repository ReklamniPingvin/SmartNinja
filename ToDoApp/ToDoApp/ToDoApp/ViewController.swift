//
//  ViewController.swift
//  ToDoApp
//
//  Created by Robert Grdadolnik on 17/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var taskField: UITextField!
    @IBOutlet var taskPriorityField: UITextField!
    @IBOutlet var addTaskButton: UIButton!
    @IBOutlet var taskShower: UILabel!
    @IBOutlet var lastTask: UITextView!
    
    @IBAction func addTask(sender: UIButton) {
        if let taskName = taskField.text, taskPriority = taskPriorityField.text {
            if taskName != "" && taskPriority != "" {
                let newTask = Task(taskName: taskName, taskpriority: taskPriority, taskState: State.NotStarted, taskDateAdded: NSDate())
                
                TaskManager.shared.addTask(newTask)
                
                taskShower.text = "Število opravil: \(TaskManager.shared.tasks.count)"
                lastTask.text = "Zadnje opravilo: \(TaskManager.shared.tasks.last?.descript())"
                
                taskPriorityField.text = ""
                taskField.text = ""
                
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        taskShower.text = "Število opravil: \(TaskManager.shared.tasks.count)"
        lastTask.text = "Zadnje opravilo: \(TaskManager.shared.tasks.last?.descript())"
    }
}

