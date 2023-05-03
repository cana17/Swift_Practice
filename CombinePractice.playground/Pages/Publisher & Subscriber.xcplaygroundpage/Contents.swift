//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
let just = Just(1000) // just는 데이터를 한번 전송하고 끝남
let subscription1 = just.sink { value in
    print("Received Value: \(value)")
}

let arryPublisher = [1, 3, 5, 7, 9].publisher // 데이터 배열 형태로 여러개 보내기
let subscription2 = arryPublisher.sink { value in
    print("Received Value: \(value)")
}

// assign 실습
class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
        }
    }
}

let object = MyClass()
let subscription3 = arryPublisher.assign(to: \.property, on: object)
print("Final Value: \(object.property)")
object.property = 3





//: [Next](@next)


