//
//  ViewController.swift
//  SearchingATableView
//
//  Created by DA MAC M1 158 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","LMNOP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //G
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "vc_cell", for: indexPath) as? TableViewCell else{return UITableViewCell()}
        
        cell.name.text = "I am a cell"
        return cell
    }
}

