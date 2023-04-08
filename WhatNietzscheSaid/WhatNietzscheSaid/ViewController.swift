//
//  ViewController.swift
//  WhatNietzscheSaid
//
//  Created by woojin Choi on 2023/04/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "첫 걸음은 자신에 대한 존경심에서 비롯된다.", name: "자신에 대하여"),
        Quote(contents: "오늘 하루를 기분 좋게 시작하고 싶다면, 아주 사소한 것이라도 어떻게든 그 바람이 실현되도록 노력하며 하루를 보내라.", name: "기쁨에 대하여"),
        Quote(contents: "지금 이 인생을 다시 한 번 완전히 똑같이 살아도 좋다는 마음으로 살라.", name: "삶에 대하여"),
        Quote(contents: "우리는 역사라는 것을 자신과는 거의 무관한 도서관의 낡은 책장 속에 가지런히 꽂혀있는 오래된 책쯤으로 여긴다. 그러나 우리들 한 사람 한 사람에게도 역사는 분명 존재한다. 현재인 오늘 하루 자신이 무엇을 어떻게 행동하는가, 그것이 매일의 역사의 한페이지를 장식한다.", name: "마음에 대하여"),
        Quote(contents: "친구를 사귀고, 이야기를 나누고, 서로를 존경하는 것은 높은 곳을 향함에 있어 반드시 필요한 일이다.", name: "친구에 대하여"),
        Quote(contents: "자신에 대하여 생리적 혐오를 가진 상대에게 아무리 정중하게 대해도, 그 자리에서 자신에 대한 생각이 달라지지는 않는다. 이러한 때에는 무리하게 애쓰지 않고, 평소의 자세로 담담히 지내는 것이 최선이다.", name: "세상에 대하여"),
        Quote(contents: "큰 칭찬을 받는다. 그때 칭찬받는 한 사람은 매우 부끄러워한다. 다른 한 사람은 더욱 자만해진다.", name: "인간의 두 가지 유형"),
        Quote(contents: "사랑의 본질은 사랑한다는 행위 그 자체이다.", name: "사랑에 대하여"),
        Quote(contents: "옛 서적을 읽는 것으로 우리는 지금의 기대에서 멀리 날아갈 수 있으며, 완전히 낯선 외국의 세계로 갈 수도 있다. 그런 뒤 다시 현실로 돌아왔을 때 무슨 일이 일어날까. 막다른 길에 서 있다고 느낄 때 읽는 고전은 지성의 고양에 특효약이다.", name: "고전을 읽는 이유"),
        Quote(contents: "평소의 자신이 아니라 좀 더 맑고 고귀한 자기 자신이 지금 이곳에 있다는 것을 은총과도 같이 깨닫는 순간이 있다. 그 순간을 소중히 여겨라.", name: "내 안의 고귀한 자신"),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func tapQuoteGneratoButton(_ sender: Any) {
        let random = Int(arc4random_uniform(10)) // 0~9 사이 중 랜덤 출력
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

