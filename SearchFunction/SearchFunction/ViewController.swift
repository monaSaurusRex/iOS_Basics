//
//  ViewController.swift
//  SearchFunction
//
//  Created by DA MAC M1 158 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    
    var programLang = ["JavaScript", "TypeScript", "Java", "C#", "Python", "Swift", "Kotlin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programLang.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = programLang[indexPath.row]
        return cell
    }
    
    
    
}
