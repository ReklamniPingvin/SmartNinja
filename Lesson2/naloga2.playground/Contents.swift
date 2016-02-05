//: Playground - noun: a place where people can play

import UIKit

//Napiši razred, ki predstavlja opravilo (npr. Task). Vsebuje naj vsaj naslednje lastnosti:
//
//ime,
//datum dodajanja,
//datum spremembe,
//prioriteta,
//stanje.
//
//Smiselno izberi podatkovne tipe, le stanje naj bo posebnega tipa, ki je enum. Glede na tvoje izbrano opravilo, lahko dodaš še več smiselnih lastnosti. Implementiraj še metodo description in convenience initializer-je za izpis opravila.



class toDoTask {
    var task: String?
    var priorityString: String?
    var stateString: String?
    var createdDate: NSDate?
    var modifiedDate: NSDate?
    enum priority: String {
        case Normal = "Normalno", Important = "Pomembno", NotImportant = "Nepomembno"
    }
    enum state: String {
        case Done = "Opravljeno!", InProgress = "V opravljanju...", NotStarted = "Neopravljeno!"
    }
    
    var description : String {
        return "Neki bla bla bla bla description"
    }
    
    init(task: String, priority: toDoTask.priority) {
        self.task = task
        self.priorityString = priority.rawValue
        self.stateString = state.NotStarted.rawValue
    }
}


let task1 = toDoTask(task: "Poišči novega iPhona", priority: .Important)
task1.task
task1.priorityString
task1.stateString

let task2 = toDoTask(task: "Kupi mleko", priority: .Normal)
task2.task
task2.priorityString
task2.stateString

task2.stateString = toDoTask.state.Done.rawValue
task2.stateString


















