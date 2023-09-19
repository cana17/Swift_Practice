//
//  ContentView.swift
//  SimpleMusicApp
//
//  Created by woojin Choi on 2023/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
