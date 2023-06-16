import Foundation
import Combine

// subject는 Publisher이다

// PassthroughSubject
let relay = PassthroughSubject<String, Never>() // Never: 실패할리가 없다, 초기 데이터 없음
let subscription1 = relay.sink { value in
    print("subscription1 received value: \(value)")
}

relay.send("Hello")
relay.send("World!")



// CurrentValueSubject
let variable = CurrentValueSubject<String, Never>("") // currentValueSubject는 초기값을 넣어줘야함

variable.send("Initial text")

let subscription2 = variable.sink { value in
    print("subscription2 received value: \(value)")
}

variable.send("More text")
variable.value // 현재 묻혀진 데이터 확인가능

let publisher = ["Here","we","go!"].publisher
publisher.subscribe(relay) // relay에 보냄
publisher.subscribe(variable) // variable에 보냄


