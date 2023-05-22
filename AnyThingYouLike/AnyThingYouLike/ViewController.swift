//
//  ViewController.swift
//  AnyThingYouLike
//
//  Created by DA MAC M1 158 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var cars = ["Kia", "Hyundai", "Ford", "Toyota", "BMW", "Honda", "Mazda","Mercedez","Lexus","This Car"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        
        return cell
    }
    
}

