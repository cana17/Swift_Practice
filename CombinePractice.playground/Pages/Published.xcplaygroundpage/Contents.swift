//: [Previous](@previous)

import Foundation
import UIKit
import Combine

final class SomeViewModel {
    @Published var name: String = "Jack" // name은 published 됨
    var age: Int = 20 // age는 publshed 되지 않음
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()

print("text: \(label.text)")

vm.$name.assign(to: \.text, on: label) // $로 퍼블리셔에 접근 가능
print("text: \(label.text)")

vm.name = "Jason"
print("text: \(label.text)")

vm.name = "Hoo"
print("text: \(label.text)")



//: [Next](@next)
