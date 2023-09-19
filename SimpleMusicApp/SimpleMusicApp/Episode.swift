//
//  Episode.swift
//  SimpleMusicApp
//
//  Created by woojin Choi on 2023/09/20.
//

import Foundation

struct Episode {
    let title: String
    let showTitle: String
    let duration: TimeInterval
}

extension Episode {
    static let list: [Episode] = [
        Episode(title: "It's Complicated", showTitle: "A Dat to Remember", duration: 300),
        Episode(title: "Don't stop me now", showTitle: "Queen", duration: 500),
    ]
}
