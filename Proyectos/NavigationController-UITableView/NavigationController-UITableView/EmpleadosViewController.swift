//
//  EmpleadosViewController.swift
//  NavigationController-UITableView
//
//  Created by Marco Antonio Hernández Alba on 25/03/21.
//

import UIKit

class EmpleadosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var nombresEmpleados = ["Hugo Pérez", "Francisco López", "Luis Magaña"]
    var edadesEmpleados = [21,22,23]
    
    var fotosEmpleados:[UIImage] = [
        UIImage(named: "foto1.jpg")!,
        UIImage(named: "foto2.jpg")!,
        UIImage(named: "foto3.jpg")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombresEmpleados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell()
        
        celda.textLabel?.text = nombresEmpleados[indexPath.row]
        
        return celda
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "detalleEmpleadoSegue", sender: indexPath.row)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalleEmpleadoSegue" {
            
            let idSeleccionado = sender as! Int
            
            let detalleEmpleadoVC:detalleViewController = segue.destination as! detalleViewController
            
            detalleEmpleadoVC.nombreRecibido = nombresEmpleados[idSeleccionado]
            
            detalleEmpleadoVC.edadRecibida = edadesEmpleados[idSeleccionado]
            
            detalleEmpleadoVC.fotoRecibida = fotosEmpleados[idSeleccionado]
        }
        
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
