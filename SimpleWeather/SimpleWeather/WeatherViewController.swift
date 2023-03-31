//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by woojin Choi on 2023/03/31.
//

import UIKit

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var weatherImageview: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButton(_ sender: Any) {
        
        cityLabel.text = cities.randomElement()
        
        let imageName = weathers.randomElement()!
        weatherImageview.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        print("도시, 온도, 날씨 이미지 변경")
    }
    
}
