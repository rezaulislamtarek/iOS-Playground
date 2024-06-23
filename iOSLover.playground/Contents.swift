import UIKit


class Person{
    var name : String
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    
    deinit{
        print("\(name) is deinitialized")
    }
}

var p1 : Person? = Person(name: "Rezaul") // Chank of memory allocate ARC = 1
var p2 = p1   // ARC = 1 + 1 = 2

p1 = nil    // ARC = 2 - 1 = 1
print(p1?.name) // nil
print(p2?.name) // Rezaul
p2 = nil        // ARC = 1 - 1 = 0 // Rezaul is deinitialized
print(p2?.name) // nil
