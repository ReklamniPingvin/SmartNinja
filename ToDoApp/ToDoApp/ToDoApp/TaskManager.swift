//
//  TaskManager.swift
//  ToDoApp
//
//  Created by Robert Grdadolnik on 17/02/16.
//  Copyright © 2016 Robert Grdadolnik. All rights reserved.
//

import UIKit

class TaskManager: NSObject {
    static let shared = TaskManager()
    let defaults = NSUserDefaults.standardUserDefaults()
    lazy var tasks: [Task] = self.loadTasks()
    
    func loadTasks() -> [Task] {
        if let archivedTasks = self.defaults.objectForKey("tasks-ToDoApp") as? NSData {
            if let savedTasks = NSKeyedUnarchiver.unarchiveObjectWithData(archivedTasks) as? [Task] {
                return savedTasks
            }
        }
        
        // default - empty array
        return [Task]()
    }
    
    
    func addTask(task: Task) {
        self.tasks.append(task)
        
        let archivedTasks = NSKeyedArchiver.archivedDataWithRootObject(tasks)
        self.defaults.setObject(archivedTasks, forKey: "tasks-ToDoApp")
        self.defaults.synchronize()
    }
    
    func removeTask(name: String) {
        if let index = tasks.indexOf({$0.taskName == name}) {
            tasks.removeAtIndex(index)

            if var storedTasks = self.defaults.objectForKey("tasks-ToDoApp") as? [Task] {
                storedTasks.removeAtIndex(index)
            }
        }
    }

}


extension TaskManager {
    
    func tasksWithState(state: State) -> [Task] {
        var sameStateTasks = [Task]()
        for task in tasks {
            if task.taskState == state {
                sameStateTasks.append(task)
            }
        }
        
        return sameStateTasks
    }
    
}
