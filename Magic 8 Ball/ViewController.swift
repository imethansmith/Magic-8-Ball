//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//  Modified by Ethan Smith on 10/02/2021.

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    var currentNumber = 0
    
    @IBOutlet weak var magicEightBallView: UIImageView!
    
    @IBAction func triggerEightBall(_ sender: Any) {
        var tempNumber = Int.random(in: 0 ..< 5)
        while tempNumber == currentNumber {
            tempNumber = Int.random(in: 0 ..< 5)
        }
        currentNumber = tempNumber
        
        magicEightBallView.image = ballArray[currentNumber]
    }
    
}

