import Foundation

class Smaple{
    var initialValue : Int
    init(initialValue: Int) {
        self.initialValue = initialValue
    }
    
    func update(value : Int){
        self.initialValue = value
    }
    
    //Computed property
    var someComputedProperty: String {
        if self.initialValue > 10 {
            //print("GREATER THAN 10")
            return "GREATER THAN 10"
        } else {
           // print("A SINGLE DIGIT NUMBER")
            return "A SINGLE DIGIT NUMBER"
        }
    }
    
    //Lazy prperty
    lazy var someLazyProperty : String = "Initial value is \(initialValue)"
    
}

/*
    Lazy prperty captured 1st times accessed values.
    As a result it shows initial value is 5 when it call second time.
 */


let sample = Smaple(initialValue: 5)
 
sample.someLazyProperty
sample.someComputedProperty
sample.update(value: 20)
sample.someLazyProperty
sample.someComputedProperty



