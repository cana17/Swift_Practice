//
//  UserPrrofileSettings.swift
//  EnvironmentObjTest
//
//  Created by woojin Choi on 2023/06/27.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
