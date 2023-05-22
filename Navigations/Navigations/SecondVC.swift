//
//  SecondVC.swift
//  Navigations
//
//  Created by DA MAC M1 158 on 2023/05/19.
//

import UIKit



class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ButtonToThirdVC(_ sender: UIButton) {
        let storyBoard = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC
        
        self.navigationController?.pushViewController(storyBoard!, animated: true)
    }

}
