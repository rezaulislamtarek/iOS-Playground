import UIKit

class Person {
    var name : String
    var kutta : Kutta?
    
    init(name: String ) {
        self.name = name
        
    }
}
 
class Kutta{
    var name : String
    weak var owner : Person?
    
    init(name: String, owner: Person) {
        self.name = name
        self.owner = owner
    }
    deinit{
        print("Kuttar nam \(name)")
    }
}

var person : Person? = Person(name: "Khan Shab")  // Persons ARC = 1
var kutta  : Kutta? = Kutta(name: "Sparkiiii", owner: person!)  // Kuttas ARC = 1

person?.kutta = kutta   // Kuttas ARC = 2
kutta?.owner = person   // Persons ARC = ? 1

print(kutta?.owner?.name)    // Khan Shab

person = nil

print(kutta?.owner?.name)    //nil




/*
    Memory block for Person ; ARC for Person = 1
    Memory block for Kutta ; ARC for Kutta = 1
    person.kutta = kutta ; ARC for kutta = 1 + 1 = 2
 
 */

