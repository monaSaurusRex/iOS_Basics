//
//  ToDoViewController.swift
//  Models
//
//  Created by DA MAC M1 158 on 2023/05/24.
//

import UIKit

class ToDoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
//    var array = ["Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune"]
    var array = [ToDo]()
    var searchingArray = [ToDo]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        fetchApiData(URL: "https://jsonplaceholder.typicode.com/todos"){ result in
                self.array = result
                print(result)
                DispatchQueue.main.async{
                self.tableView.reloadData()
            }
        }
    }
    
    func fetchApiData(URL url: String, completion: @escaping([ToDo])->Void){
        
        let url = URL(string: url)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) {data, response, error in
            if data != nil && error == nil{
                do{
                    let parsingData = try JSONDecoder().decode([ToDo].self, from: data!)
                    completion(parsingData)
                    
                }catch{
                    print("parsing error")
                }
            }
        }
            dataTask.resume()
    }
    
    
}

extension ToDoViewController:UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searching{
            return searchingArray.count
        }
        
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTableViewCell", for: indexPath) as? ToDoTableViewCell else{return UITableViewCell()}
        
        if searching{
//            cell.textLabel?.text = searchingArray.[indexPath.row]
            cell.idLabel.text = "\(searchingArray[indexPath.row].id)" + "."
            cell.titleLabel.text = "\(searchingArray[indexPath.row].title)"
        }
        else{
            cell.idLabel.text = "\(array[indexPath.row].id)" + "."
            cell.titleLabel.text = "\(array[indexPath.row].title)"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        tableView.beginUpdates()
        array.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        tableView.endUpdates()
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        searchingArray = array.filter({$0.title.prefix(searchText.count).lowercased() == searchText.lowercased()})
        
//        let searchString = searchTe
//        
        searching = true
        tableView.reloadData()
    }
    
    
    //send data to next form
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController
        
        vc?.numLbl = "\(array[indexPath.row].id)"
        vc?.titleLbl = array[indexPath.row].title
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
