//
//  StockRank_SwiftUIApp.swift
//  StockRank-SwiftUI
//
//  Created by woojin Choi on 2023/06/26.
//

import SwiftUI

@main
struct StockRank_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            StockRankView()
                .preferredColorScheme(.dark)
        }
    }
}
