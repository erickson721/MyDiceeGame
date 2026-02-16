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
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollDiceButtonPressed(_ sender: UIButton) {
        
        let biasedDiceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix"), #imageLiteral(resourceName: "DiceSix"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        diceImageViewThree.image = diceArray[Int.random(in: 0...5)]
        diceImageViewFour.image = diceArray[Int.random(in: 0...5)]
        diceImageViewFive.image = biasedDiceArray[Int.random(in: 0...7)] //Dice is using the weighted dice
        diceImageViewSix.image = biasedDiceArray[Int.random(in: 0...7)] //Dice is using the weighted dice
        
        //Simple animation for dice rolling
        self.diceImageViewOne.animationImages = diceArray
        self.diceImageViewOne.animationDuration = 0.5
        self.diceImageViewOne.animationRepeatCount = 1
        self.diceImageViewOne.startAnimating()
        
        self.diceImageViewTwo.animationImages = diceArray
        self.diceImageViewTwo.animationDuration = 0.5
        self.diceImageViewTwo.animationRepeatCount = 1
        self.diceImageViewTwo.startAnimating()
        
        //Rolling animations for the extra dice
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
    //Button to reset the dice to the first position
    @IBAction func resetDice(_ sender: Any) {
        diceImageViewOne.image = diceArray[0]
        diceImageViewTwo.image = diceArray[0]
        diceImageViewThree.image = diceArray[0]
        diceImageViewFour.image = diceArray[0]
        diceImageViewFive.image = diceArray[0]
        diceImageViewSix.image = diceArray[0]
    }
}

