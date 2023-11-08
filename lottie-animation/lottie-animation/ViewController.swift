//
//  ViewController.swift
//  lottie-animation
//
//  Created by woojin Choi on 11/8/23.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    private var animationView: LottieAnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimationView()
    }

    func setupAnimationView() {
        animationView = .init(name: "Animation - 1699408993571")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1.0
        view.addSubview(animationView)
        animationView.play()
    }
}
