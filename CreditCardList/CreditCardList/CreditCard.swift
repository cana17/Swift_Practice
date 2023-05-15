//
//  CreditCard.swift
//  CreditCardList
//
//  Created by woojin Choi on 2023/05/13.
//

import Foundation

struct CreditCard: Codable {
    let id: Int
    let rank: Int
    let name: String
    let cardImageURL: String
    let promotionDetail: PromotionDetail
    let isSelected: Bool? // 사용자가 카드를 선택했을때 생성, 그 전에 nil값이라 옵셔널
}

struct PromotionDetail: Codable {
    let companyName: String
    let period: String
    let amount: Int
    let condition: String
    let benefitCondition: String
    let benefitDetail: String
    let benefitDate: String
}
