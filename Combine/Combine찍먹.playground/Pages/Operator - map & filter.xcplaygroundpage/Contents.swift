//: [Previous](@previous)

import Foundation
import Combine

// Transform - Map
let numPublisher = PassthroughSubject<Int, Never>()

let subscription1 = numPublisher
    .map { $0 * 2 } // data값을 두배로 하는 operator
    .sink { value in
        print("Tranformed Value: \(value)")
    }

numPublisher.send(10) // 20
numPublisher.send(20) // 40
numPublisher.send(30) // 60
subscription1.cancel() // 구독취소

// Filter
let stringPublisher = PassthroughSubject<String, Never>()

let subscription2 = stringPublisher
    .filter { $0.contains("a") } // a를 포함하는 string만 넘겨라
    .sink { value in
        print("Filtered Value: \(value)")
    }

stringPublisher.send("abc")
stringPublisher.send("Jack")
stringPublisher.send("Joon")
stringPublisher.send("Jenny")
stringPublisher.send("Jason")
subscription2.cancel()


//: [Next](@next)
