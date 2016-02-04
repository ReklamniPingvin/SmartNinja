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
    var createdDate: NSDate?
    var modifiedDate: NSDate?
    enum priority: String {
        case Normal = "Normalno", Important = "Pomembno", NotImportant = "Nepomembno"
    }
    enum state: String {
        case Done = "Opravljeno!", InProgress = "V opravljanju...", NotStarted = "Neopravljeno!"
    }
    
    var description : String {
        return "Neki bla bla bla bla"
    }
    
    init(task: String, createdDate: NSDate, priority: toDoTask.priority, state: toDoTask.state) {
        self.task = task
        self.createdDate = createdDate
    }
}


















