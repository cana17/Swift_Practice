//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by woojin Choi on 2023/06/26.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
