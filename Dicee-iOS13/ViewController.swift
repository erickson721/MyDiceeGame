//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
// My enhanced version
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!

    
    @IBOutlet weak var diceThreeVisibility: UIView!
    @IBOutlet weak var diceImageViewThree: UIImageView!
    @IBOutlet weak var diceFourVisibility: UIView!
    @IBOutlet weak var diceImageViewFour: UIImageView!
    @IBOutlet weak var diceFiveVisibility: UIView!
    @IBOutlet weak var diceImageViewFive: UIImageView!
    @IBOutlet weak var diceSixVisibility: UIView!
    @IBOutlet weak var diceImageViewSix: UIImageView!
    
    
    @IBAction func diceAmountSelected(_ sender: UIButton) {
        
        
    }
    
    @IBAction func rollDiceButtonPressed(_ sender: UIButton) {
        
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        diceImageViewThree.image = diceArray[Int.random(in: 0...5)]
        diceImageViewFour.image = diceArray[Int.random(in: 0...5)]
        diceImageViewFive.image = diceArray[Int.random(in: 0...5)]
        diceImageViewSix.image = diceArray[Int.random(in: 0...5)]
        
        //Simple animation for dice rolling
        self.diceImageViewOne.animationImages = diceArray
        self.diceImageViewOne.animationDuration = 0.5
        self.diceImageViewOne.animationRepeatCount = 1
        self.diceImageViewOne.startAnimating()
        
        self.diceImageViewTwo.animationImages = diceArray
        self.diceImageViewTwo.animationDuration = 0.5
        self.diceImageViewTwo.animationRepeatCount = 1
        self.diceImageViewTwo.startAnimating()
        
        self.diceImageViewThree.animationImages = diceArray
        self.diceImageViewThree.animationDuration = 0.5
        self.diceImageViewThree.animationRepeatCount = 1
        self.diceImageViewThree.startAnimating()
        
        self.diceImageViewFour.animationImages = diceArray
        self.diceImageViewFour.animationDuration = 0.5
        self.diceImageViewFour.animationRepeatCount = 1
        self.diceImageViewFour.startAnimating()
        
        self.diceImageViewFive.animationImages = diceArray
        self.diceImageViewFive.animationDuration = 0.5
        self.diceImageViewFive.animationRepeatCount = 1
        self.diceImageViewFive.startAnimating()
        
        self.diceImageViewSix.animationImages = diceArray
        self.diceImageViewSix.animationDuration = 0.5
        self.diceImageViewSix.animationRepeatCount = 1
        self.diceImageViewSix.startAnimating()
    }
}

