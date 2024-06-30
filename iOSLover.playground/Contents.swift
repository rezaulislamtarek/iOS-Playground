import Foundation
import Combine

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

