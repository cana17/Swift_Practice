//
//  ContentView.swift
//  EnvironmentObjTest
//
//  Created by woojin Choi on 2023/06/26.
//

import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                Text("Current Age: \(userProfile.age)")
                
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                }
                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday Party")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSettings())
    }
}
