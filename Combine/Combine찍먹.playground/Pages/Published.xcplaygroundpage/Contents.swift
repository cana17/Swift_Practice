//: [Previous](@previous)

import Foundation
import UIKit
import Combine

// @Published 실습 - class에서만 쓸 수 있음!!

final class SomeViewModel {
    @Published var name: String = "Jack" // name은 published 됨
    var age: Int = 20 // age는 published 되지 않음
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()

print("text: \(label.text)") // empty 문자열("")

vm.$name.assign(to: \.text, on: label) // publisher에서 생긴 데이터를 label의 text에 할당. $로 퍼블리셔에 접근 가능
print("text: \(label.text)")

vm.name = "Jason"
print("text: \(label.text)")

vm.name = "Hoo"
print("text: \(label.text)")



//: [Next](@next)
