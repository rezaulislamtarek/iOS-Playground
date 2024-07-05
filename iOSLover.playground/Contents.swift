import Foundation

struct User {
    var name : String
    var age : Int
    var userSalery : Double = 123.45
    
    mutating func updateSalery(_ s: Double){
        self.userSalery = s
    }
    
    lazy var salery : Double = {
        print("Lazy calling...")
        return userSalery
    }()
    
}

var user = User(name: "Tarek", age: 29)
print(user.salery) // Output: Lazy calling... and 123.45
user.updateSalery(456.45)
print(user.salery)  // output: 456.45
print(user.name)



/*
class ComplexCalculation{
    var n : Int
    init(n: Int){
        self.n = n
    }
    
    lazy var result : Int = {
        var res = 0
        for i in 1...1000000{
            res += i
        }
        print("Lazy Call")
        return res
    }()
    
     var cResult : Int  {
        var res = 0
        for i in 1...1000000{
            res += i
        }
        print("Computed Call")
         
        return res
    }
    
}

let comCal = ComplexCalculation(n: 5)
print(comCal.cResult)
print(comCal.cResult)

print(comCal.result)
print(comCal.result)
 
/*
  
 computed and lazy
  
 */

*/
