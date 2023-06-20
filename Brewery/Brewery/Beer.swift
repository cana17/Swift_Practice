//
//  Beer.swift
//  Brewery
//
//  Created by woojin Choi on 2023/06/19.
//

import Foundation

// data를 받기만하므로 Decode만 필요함(Encoded X)
struct Beer: Decodable {
    
    // 값을 못받는 것을 대비해 모두 옵셔널
    let id: Int?
    let name, taglineString, description, brewersTips, imageURL: String?
    let foodPairing: [String]?
    
    var tagLine: String {
        let tags = taglineString?.components(separatedBy: ". ")
        let hashtags = tags?.map { "#" + $0.replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: ".", with: "")
            .replacingOccurrences(of: ",", with: " #")
        }
        return hashtags?.joined(separator: " ") ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        case id, name, description
        case taglineString = "tagline"
        case imageURL = "image_url"
        case brewersTips = "brewers_tips"
        case foodPairing = "food_pairing"
    }
}

