import Foundation
import Combine

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


/*
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
