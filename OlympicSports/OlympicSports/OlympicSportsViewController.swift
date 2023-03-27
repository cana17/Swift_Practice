//
//  OlympicSportsViewController.swift
//  OlympicSports
//
//  Created by woojin Choi on 2023/03/24.
//

import UIKit

class OlympicSportsViewController: UIViewController {

    let symbols: [String] = ["figure.badminton", "figure.boxing", "figure.golf", "figure.basketball", "figure.volleyball", "figure.archery", "figure.soccer"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        button.tintColor = UIColor.systemRed
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        let symbolName = symbol.replacingOccurrences(of: "figure.", with: "")
        imageView.image = UIImage(systemName: symbol)
        label.text = symbolName
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
    
}
