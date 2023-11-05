import UIKit

struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    mutating func makeDisguise() -> Self {
        let champions = ["Ezreal", "Lux", "Fiora"]
        
        name = champions.randomElement()!
        age = Int.random(in: 15...30)
        
        return self
    }
}

var neeko = Person(name: "Neeko", age: 21)
print(neeko)
print(neeko.makeDisguise())
