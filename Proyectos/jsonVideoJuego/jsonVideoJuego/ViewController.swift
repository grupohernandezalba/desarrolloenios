//
//  ViewController.swift
//  jsonVideoJuego
//
//  Created by Marco Antonio Hernández Alba on 05/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    var heroes = [Heroe]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        obtieneJSON {
            print("Ok")
            self.tabla.reloadData()
        }
        
        tabla.delegate = self
        tabla.dataSource = self
        
    }
    
    func obtieneJSON(completed: @escaping () -> ()){
        let url = URL(string: "https://grupohernandezalba.com/heroes.json")
        
        URLSession.shared.dataTask(with: url!) { (data,response,error) in
            
            if error == nil {
                do {
                    self.heroes = try JSONDecoder().decode([Heroe].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                } catch {
                    print("Error al obtener el JSON")
                    print(error)
                }
            
            }
        }.resume()
            
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        celda.textLabel?.text = heroes[indexPath.row].nombre
        
        return celda
        
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "detalleSegue", sender: indexPath.row)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleSegue" {

            let idSeleccionado = sender as! Int
            
            let detalleVC:HeroeViewController = segue.destination as! HeroeViewController
            
            detalleVC.tituloDetalle = heroes[idSeleccionado].nombre
            
            
            let url = URL(string: "https://steamcdn-a.akamaihd.net/" + heroes[idSeleccionado].img)
            
            let data = try? Data(contentsOf: url!)
          
            detalleVC.fotoDetalle = UIImage(data: data!)!

            
        }
        
    }
    
    

}

