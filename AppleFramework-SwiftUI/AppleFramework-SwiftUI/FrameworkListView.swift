//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by woojin Choi on 2023/06/25.
//

import SwiftUI

struct FrameworkListView: View {

    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        // Grid 만들기
        // UIKit: UICollectionView
        //  - Data, Presentation, Layout
        // SwiftUI: LazyVGrid,LazyHGrid
        //  - Data, Presentation, Layout
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list) { item in
                        FrameworkCell(framework: item)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
