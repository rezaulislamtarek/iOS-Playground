import Foundation

let sq = DispatchQueue(label: "sq", attributes: .concurrent)
 
print("1")
sq.async {
    print("2")
    print(Thread.current)
        sleep(4)
    print("3")
}

print("4")
print(Thread.current)
sq.async {
    print("5")
    print(Thread.current)
    print("6")
}
print("Sesh")
// 1 2 3 4 5 6 Sesh  ->(sync)

