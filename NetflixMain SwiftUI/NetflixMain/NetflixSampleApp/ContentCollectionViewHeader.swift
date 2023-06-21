//
//  ContentCollectionViewHeader.swift
//  NetflixMain
//
//  Created by woojin Choi on 2023/06/18.
//

import UIKit

class ContentCollectionViewHeader: UICollectionReusableView {
    let sectionNameLabel = UILabel()
        
    override func layoutSubviews() {
        super.layoutSubviews()
        sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .label
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        sectionNameLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
        }
    }
}
