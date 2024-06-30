import Foundation
import Combine

struct Sequence<T> : Publisher{
    typealias Failure = Never
    typealias Output = T
    
    private let seq : [T]
    
    init(_ seq : [T]){
        self.seq = seq
    }
    
    func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, T == S.Input {
        self.seq.forEach { item in
            sleep(1)
            let _ = subscriber.receive(item)
        }
        subscriber.receive(completion: .finished)
    }
}

let _ = Sequence([1,2,3,4,5,6]).sink { completion in
    print(completion)
} receiveValue: { value in
    print(value)
}

/*
 ------------ Just Publisher -------------
 
struct Just<T> : Publisher{
    typealias Output = T
    typealias Failure = Never
    
    private let value : T
    init(_ value  : T){
        self.value = value
    }
    func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, T == S.Input {
        let _ = subscriber.receive(self.value)
        subscriber.receive(completion: .finished)
    }
}

let _ = Just("Rezaul").sink { completion in
    print(completion)
} receiveValue: { value in
    print(value)
}
 
 
 -------------- Empty Publisher ------------
struct Empty : Publisher{
    typealias Output = Never
    
    typealias Failure = Never
    
    func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
        subscriber.receive(completion: .finished)
    }
     
    
}

let _ = Empty().sink { completion in
    print(completion)
} receiveValue: { _ in
    
}
*/
