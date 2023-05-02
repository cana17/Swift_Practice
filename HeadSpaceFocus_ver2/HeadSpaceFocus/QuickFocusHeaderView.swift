//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by woojin Choi on 2023/05/02.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
