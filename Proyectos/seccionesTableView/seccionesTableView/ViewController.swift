//
//  ViewController.swift
//  seccionesTableView
//
//  Created by Marco Antonio Hernández Alba on 12/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var diccionarioAutomoviles = [String: [String]]()
    var titulosSecciones = [String]()
    var automoviles = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        automoviles = ["Audi", "Aston Martin","BMW", "Bugatti", "Bentley","Chevrolet", "Cadillac","Dodge","Ferrari", "Ford","Honda","Jaguar","Lamborghini","Mercedes", "Mazda","Nissan","Porsche","Rolls Royce","Toyota","Volkswagen"]
        
        
        // 1
        for automovil in automoviles {
            let idAuto = String(automovil.prefix(1))
                if var carValues = diccionarioAutomoviles[idAuto] {
                    carValues.append(automovil)
                    diccionarioAutomoviles[idAuto] = carValues
                } else {
                    diccionarioAutomoviles[idAuto] = [automovil]
                }
        }
        
        // 2
        titulosSecciones = [String](diccionarioAutomoviles.keys)
        titulosSecciones = titulosSecciones.sorted(by: { $0 > $1 })
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let idAuto = titulosSecciones[section]
        if let carValues = diccionarioAutomoviles[idAuto] {
            return carValues.count
        }
            
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celda = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
          
  
        let idAuto = titulosSecciones[indexPath.section]
        if let datosAuto = diccionarioAutomoviles[idAuto] {
            celda.textLabel?.text = datosAuto[indexPath.row]
        }

        return celda
        
        
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titulosSecciones.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titulosSecciones[section]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return titulosSecciones
    }

}

