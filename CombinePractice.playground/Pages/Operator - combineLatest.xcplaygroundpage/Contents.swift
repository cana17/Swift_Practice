//: [Previous](@previous)

import Foundation
import Combine


// Basic CombineLatest

let strPublisher = PassthroughSubject<String, Never>()
let numPublisher = PassthroughSubject<Int, Never>()


//Publishers.CombineLatest(strPublisher, numPublisher).sink { (str, num) in
//    print("Receive: \(str), \(num)")
//}
strPublisher.combineLatest(numPublisher).sink { (str, num) in
    print("Receive: \(str), \(num)")
}


//strPublisher.send("a")
//strPublisher.send("b")
//strPublisher.send("c")
//
//numPublisher.send(1)
//numPublisher.send(2)
//numPublisher.send(3)

strPublisher.send("a")
numPublisher.send(1)
strPublisher.send("b")
strPublisher.send("c")

numPublisher.send(2)
numPublisher.send(3)



// Advanced CombineLatest

//: **simulate** input from text fields with subjects
let usernamePublisher = PassthroughSubject<String, Never>()
let passwordPublisher = PassthroughSubject<String, Never>()

//: **combine** the latest value of each input to compute a validation
let validatedCredentialsSubscription = Publishers.CombineLatest(usernamePublisher, passwordPublisher)
    .map { (username, password) -> Bool in
        !username.isEmpty && !password.isEmpty && password.count > 12
    }
    .sink { valid in
        print("CombineLatest: are the credentials valid? \(valid)")
    }

//: Example: simulate typing a username and the password twice
usernamePublisher.send("jasonlee")
passwordPublisher.send("weakpw") // 12자리보다 작아서 false
passwordPublisher.send("verystrongpassword") // 12자리 이상이라 true



// Merge

//let publisher1 = [1,2,3,4,5].publisher
//let publisher2 = [300,400,500].publisher
let publisher1 = ["1","2","3","4","5"].publisher
let publisher2 = ["300","400","500"].publisher

let mergedPublishersSubscription = Publishers
    .Merge(publisher1, publisher2) // 1 이후에 2가 합쳐짐, 주의: merge는 output 타입이 같아야함
    .sink { value in
        print("Merge: subscription received value \(value)")
}

//: [Next](@next)
