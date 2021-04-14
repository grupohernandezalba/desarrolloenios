//
//  ViewController.swift
//  tabBar
//
//  Created by Marco Antonio Hernández Alba on 04/04/21.
//

import UIKit

class ViewController: UITableViewController, UITextFieldDelegate {
    
    var petitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://reqres.in/api/users?page=1"
        
        
        
        if let url = URL(string: urlString) {
            
            print(url)
            
            if let data = try? Data(contentsOf: url) {
                
                print("Antes de parse")
                print(data)
                
                parse(json: data)
            }
        }
        
    }
    
    func parse(json: Data){
        
        print("Entro a parse")
        print(json)
        
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            
            petitions = jsonPetitions.results
            tableView.reloadData()
            
        }
        
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        
        celda.textLabel?.text = "Título"
        celda.detailTextLabel?.text = "Subtítulo"
        
        return celda
        
    }

}

