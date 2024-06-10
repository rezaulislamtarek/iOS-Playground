import UIKit


class User{
    let name = "Rezaul"
}

class Caller{
   weak var user : User?
    
    func someFunc(){
        user = User()
        print(user?.name)
    }
}

let c = Caller()
c.someFunc()
/// output : nil
/// Instance will be immediately deallocated because property 'user' is 'weak'

/*
     class User{
        let name = "Rezaul"
     }
     
     class Caller{
         var user : User?
         
         func someFunc(){
             user = User()
             print(user?.name)
         }
     }
     
     let c = Caller()
     c.someFunc() // Optional("Rezaul")
 */
