//: [Previous](@previous)

import Foundation
import Combine

let subject = PassthroughSubject<String, Never>()


// The print() operator prints you all lifecycle events
let subscription = subject
    .print("[Debug]") // .print(): 더 자세한 내용들을 볼 수 있음
    .sink { (value) in
        print("Subscriber received value: \(value)")
    }

subject.send("Hello!")
subject.send("Hello again!")
subject.send("Hello for the last time!")
subject.send(completion: .finished) // publisher 측에서 관계 종료
//subscription.cancel() // 구독자가 관계 직접 끊을 수도 있음
subject.send("Hello?? :(") // 관계 종료돼서 출력안됨

//: [Next](@next)
