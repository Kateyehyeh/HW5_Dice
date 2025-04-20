//
//  ViewController.swift
//  HW5_Dice
//
//  Created by Kateyeh on 2025/1/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    @IBOutlet weak var sumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func playDice(_ sender: Any) {
        let number1 = Int.random(in: 1...6)
        let number2 = Int.random(in: 1...6)
        let sum = number1 + number2
        sumLabel.text = "\(sum)"
        diceImage1.image = UIImage(systemName: "die.face.\(number1).fill")
        diceImage2.image = UIImage(systemName: "die.face.\(number2).fill")
    }
    
    
}

#Preview{
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateInitialViewController()!
}
