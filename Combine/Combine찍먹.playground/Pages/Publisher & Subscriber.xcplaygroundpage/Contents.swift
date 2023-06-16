//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
let just = Just(1000) // just는 데이터를 한번 전송하고 끝남
let subscription1 = just.sink { value in // sink 로 데이터 받음
    print("Received Value: \(value)")
}

let arrayPublisher = [1, 3, 5, 7, 9].publisher // 배열 데이터를 publisher로 만들어서 여러개 보내기
let subscription2 = arrayPublisher.sink { value in // sink로 데이터받음(subscribe)
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
let subscription3 = arrayPublisher.assign(to: \.property, on: object) // assign으로 arrayPublisher의 데이터 받음
print("Final Value: \(object.property)")
object.property = 3





//: [Next](@next)


