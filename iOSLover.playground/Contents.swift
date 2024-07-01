import Foundation

struct Employee{
    let name : String
    let salary : Double
}


let employess = [
    Employee(name: "Kamal", salary: 55555),
    Employee(name: "Jamal", salary: 45555),
    Employee(name: "Akash", salary: 100000),
    Employee(name: "Rakib", salary: 155555),
]

func filterEmployees(filter : (Employee)-> Bool ) ->[Employee]{
    employess.filter(filter)
}

func filterBySalary(employee : Employee) -> Bool{
    return employee.salary >= 100000
}

let emps = filterEmployees(filter: filterBySalary)

print(emps)
