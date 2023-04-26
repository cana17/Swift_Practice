//
//  NewsFeedViewController.swift
//  InstaSearchView
//
//  Created by woojin Choi on 2023/04/26.
//

import UIKit

class NewsFeedViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Data, Presentation, Layout
        collectionView.dataSource = self // data
        collectionView.delegate = self // presentation
        
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero // layout을 시스템이 자동 수정하지 못하도록
                                                 // inspector 에서 collectionView estimate size를 none한거와 같음
        }
    }
}

extension NewsFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        let imageName = "animal\(indexPath.item+1)" // 이미지 에셋 시작번호가 1부터라 +1
        cell.configure(imageName)
        return cell
    }
    
}

extension NewsFeedViewController: UICollectionViewDelegateFlowLayout {
    
}
