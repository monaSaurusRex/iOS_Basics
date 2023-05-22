//
//  ViewController.swift
//  DiceAppAssessment
//
//  Created by DA MAC M1 158 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1:UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var leftDiceNumber = 5
    var rightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollDiceClicked(_ sender: Any) {
        
        //who.what = value
        var diceSides = [#imageLiteral(resourceName: "Dice_One"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]
        
        diceImage1.image = diceSides[Int.random(in: 0...5)]
        diceImage2.image = diceSides[Int.random(in: 0...5)]
    }
}

