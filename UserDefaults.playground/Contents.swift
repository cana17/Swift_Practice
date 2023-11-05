import UIKit

class Player {
    private let defaults = UserDefaults.standard
    static let info = Player()
    
    private init() {}
    
    private enum Keys: String {
        case name
        case age
        case nationality
    }
    
    var name: String {
        get { defaults.string(forKey: Keys.name.rawValue) ?? "" }
        set { defaults.set(newValue, forKey: Keys.name.rawValue) }
    }
    
    var age: Int {
        get { defaults.integer(forKey: Keys.age.rawValue) }
        set { defaults.set(newValue, forKey: Keys.age.rawValue) }
    }
    
    var nationality: String {
        get { defaults.string(forKey: Keys.nationality.rawValue) ?? "" }
        set { defaults.set(newValue, forKey: Keys.nationality.rawValue) }
    }
}
Player.info.name = "Son Heung-min"
Player.info.age = 31
Player.info.nationality = "South Korea"

Player.info.name
Player.info.age
Player.info.nationality
