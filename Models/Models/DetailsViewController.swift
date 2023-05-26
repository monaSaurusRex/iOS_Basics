//
//  DetailsViewController.swift
//  Models
//
//  Created by DA MAC M1 158 on 2023/05/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var numLbl: String?
    var titleLbl: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        numberLabel.text = numLbl
        titleLabel.text = titleLbl
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
