//
//  Task.swift
//  ToDoApp
//
//  Created by Robert Grdadolnik on 22/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import UIKit

class Task: NSObject {

    var taskName: String
    var taskpriority: String
    var taskState: State
    var taskDateAdded: NSDate
    var taskDateModified: NSDate?

    func descript() -> String {
        let addedDate = NSDateFormatter.localizedStringFromDate(taskDateAdded, dateStyle: NSDateFormatterStyle.MediumStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
        return "Task: \(taskName), priority: \(taskpriority), state: \(taskState), date added: \(addedDate)"
    }
    
    init(taskName: String, taskpriority: String, taskState: State, taskDateAdded: NSDate) {
        self.taskName = taskName
        self.taskpriority = taskpriority
        self.taskDateAdded = taskDateAdded
        self.taskState = taskState
        super.init()
    }
    
    convenience init(taskName: String) {
        self.init(taskName: taskName, taskpriority: "medium", taskState: .NotStarted, taskDateAdded: NSDate())
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(taskName, forKey: "taskName")
        aCoder.encodeObject(taskpriority, forKey: "taskPriority")
        aCoder.encodeObject(taskState.rawValue, forKey: "taskState")
        aCoder.encodeObject(taskDateAdded, forKey: "taskDateAdded")
        aCoder.encodeObject(taskDateModified, forKey: "taskDateModified")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let taskName = aDecoder.decodeObjectForKey("taskName") as! String
        let taskDateAdded = aDecoder.decodeObjectForKey("taskDateAdded") as! NSDate
        let taskDateModified = aDecoder.decodeObjectForKey("taskDateModified") as? NSDate
        let taskpriority = aDecoder.decodeObjectForKey("taskPriority") as! String
        let taskStateRaw = aDecoder.decodeObjectForKey("taskState")
        
        let taskState = State(rawValue: taskStateRaw! as! String)
        
        self.init(taskName: taskName, taskpriority: taskpriority, taskState: taskState!, taskDateAdded:taskDateAdded)
        
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        if let rhs = object as? Task {
            return self.taskName == rhs.taskName
        }
        return false
    }
}
