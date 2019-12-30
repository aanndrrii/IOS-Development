//
//  ViewController.swift
//  Lesson4
//
//  Created by Andrii on 12/29/19.
//  Copyright © 2019 Andrii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var dealButton: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealButtonDidPress(_ sender: Any) {
        
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage.init(named: "card\(leftCardNumber)")
        rightImageView.image = UIImage.init(named: "card\(rightCardNumber)")
        
        if leftCardNumber > rightCardNumber {
            leftScore+=1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightCardNumber > leftCardNumber {
            rightScore+=1
            rightScoreLabel.text = String(rightScore)
        } else {
            leftScore+=1
            rightScore+=1
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }
    }
    


}

