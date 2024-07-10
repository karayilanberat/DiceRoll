//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        let diceImages = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        // Set the randomNumber to a random int from 0 to 5
        let randomNumber = Int.random(in: 0...5)
        
        // Store the random image
        var randomImage = diceImages[randomNumber]
        
        // Set the first dice image to randomImage
        diceImageViewOne.image = UIImage(imageLiteralResourceName: randomImage)
        
        // this is another way to take a random element from an array
        randomImage = diceImages.randomElement()!
        
        // Set the first dice image to randomImage
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: randomImage)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the first dice image to diceSix
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        
        // Set the button's title text programmatically
        rollButton.setTitle("Roll Dice", for: .normal)
                
        // Set the button's title font size programmatically
        rollButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        // Load the color from assets and set it as the button's background color
        if let buttonBackGround = UIColor(named: "buttonBackground") {
            rollButton.backgroundColor = buttonBackGround
        } else {
            print("Color not found in assets")
        }

        // Make the button rounded
        rollButton.layer.cornerRadius = rollButton.frame.size.height / 3
        rollButton.clipsToBounds = true
    }
}

