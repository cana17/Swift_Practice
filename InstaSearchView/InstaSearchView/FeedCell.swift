//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by woojin Choi on 2023/04/26.
//

import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    } // 이미지를 재사용하기 전에 준비하는 함수
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
