//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by woojin Choi on 2023/06/26.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
