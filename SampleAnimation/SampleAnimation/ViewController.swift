//
//  ViewController.swift
//  SampleAnimation
//
//  Created by 長坂豪士 on 2019/09/11.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    
    @IBAction func tapStartButton(_ sender: Any) {
        //ビューの角を丸める処理をアニメーションで表現
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        // 変更前の値
        animation.fromValue = 0
        // 変更後の値
        animation.toValue = 50
        // アニメーションの時間 second
        animation.duration = 3
        // アニメーションをレイヤーに追加する
        targetView.layer.add(animation, forKey: "cornerRadius")
        // 変更後も角丸を維持
        targetView.layer.cornerRadius = 50
        
        // クロージャを用いた書き方。記載がシンプルになる
        self.targetView.alpha = 1
        UIView.animate(withDuration: 5.0) {
            self.targetView.alpha = 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

