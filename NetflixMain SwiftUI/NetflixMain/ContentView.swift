//
//  ContentView.swift
//  NetflixMain
//
//  Created by woojin Choi on 2023/06/21.
//

import SwiftUI

struct ContentView: View {
    let title = ["Netfilx Main"]
    var body: some View {
        NavigationView {
            List(title, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
