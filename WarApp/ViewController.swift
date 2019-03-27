//
//  ViewController.swift
//  WarApp
//
//  Created by Christopher Ching on 2017-09-26.
//  Copyright © 2017 Christopher Ching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealButton(_ sender: Any) {
        let randomLeftNumber = arc4random_uniform(13)
        let randomRightNumber = arc4random_uniform(13)
        leftCard.image = UIImage(named: "card\(randomLeftNumber+2)")
        rightCard.image = UIImage(named: "card\(randomRightNumber+2)")
        
        if randomLeftNumber > randomRightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if randomRightNumber > randomLeftNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
    @IBAction func restartButton(_ sender: Any) {
        leftScore = 0
        rightScore = 0
        leftCard.image = UIImage(named: "back")
        rightCard.image = UIImage(named: "back")
        leftScoreLabel.text = String(0)
        rightScoreLabel.text = String(0)
    }
    
}

