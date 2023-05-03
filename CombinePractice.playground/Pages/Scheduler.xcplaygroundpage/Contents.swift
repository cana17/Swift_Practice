//: [Previous](@previous)

import Foundation
import Combine

let arrPublisher = [1, 2, 3].publisher

let queue = DispatchQueue(label: "custom")

let subscription = arrPublisher
    .subscribe(on: queue)
    .map { value -> Int in
        print("transform: \(value), thread:\(Thread.current)")
        return value
    } // heavy한 작업은 다른 스레드
    .receive(on: DispatchQueue.main)
    .sink { value in
        print("Receive Value:\(value), thread:\(Thread.current)")
    } // 메인 스레드



//: [Next](@next)
