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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollDiceClicked(_ sender: Any) {
        //who.what = value
        diceImage1.image = UIImage(named: "5")
        diceImage2.image = #imageLiteral(resourceName: "3")
    }
}

