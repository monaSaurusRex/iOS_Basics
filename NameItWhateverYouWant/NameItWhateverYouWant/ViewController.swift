//
//  ViewController.swift
//  NameItWhateverYouWant
//
//  Created by DA MAC M1 158 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource=self
    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell else{return UITableViewCell()}
//        cell.text
        
        cell.firstName.text = "John"
        cell.lastName.text = "Doe"
        cell.email.text = "johndoe@anymail.com"
        cell.imageLabel.image = UIImage(named: "person.circle")
        
        return cell
    }
}

