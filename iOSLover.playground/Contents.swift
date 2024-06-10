import UIKit
/*
 Capture list in closures
 */


var userName : String = "Rezaul"

let code = { [userName] in
    print(userName)
}

userName = "Tarek"

code()
