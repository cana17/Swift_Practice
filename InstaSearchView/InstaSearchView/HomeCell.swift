//
//  HomeCell.swift
//  InstaSearchView
//
//  Created by woojin Choi on 2023/04/25.
//

import UIKit

class HomeCell: UICollectionViewCell {
    @IBOutlet weak var pawprint: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var homeImage: UIImageView!
    
    func congifure (_ imageName: String) {
        homeLabel.text = UITextView.self
        homeImage.image = UIImage(named: imageName)
    }
}
