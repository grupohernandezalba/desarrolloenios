//
//  ViewController.swift
//  buscarJSON
//
//  Created by Marco Antonio Hernández Alba on 03/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoBuscar: UITextField!
    
    @IBOutlet weak var textoContenido: UITextView!
    
    
    var palabra:String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
    }

    @IBAction func buscar(_ sender: Any) {
        
        palabra = textoBuscar.text!
 
        //let urlAPI = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=" + palabra!
        
        //let urlAPI = "https://reqres.in/api/users?page=1"
        
        
        let urlAPI = "https://grupohernandezalba.com/articulos.json"
        
        
        struct Articulo: Decodable {
            var titulo: String
            var contenido: String
        }
        
        //let decoder = JSONDecoder()
        
        let objetoURL = URL(string: urlAPI)
        
        let tarea = URLSession.shared.dataTask(with: objetoURL!) { (datos, respuesta, error) in
            
            if error != nil {
                print(error!)
            } else {
                
                do {
                    
                    print(datos!)
                    
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                    
                    
                    let articulo: [Articulo] = try! JSONDecoder().decode([Articulo].self, from: json)
                    
                    print(articulo)
                    
                    /*
                    do {
                        let articulo = try decoder.decode([Articulo].self, from: json as! Data)
                        print(articulo)
                    } catch {
                        print(error.localizedDescription)
                    }
 */
                    
                    //self.textoContenido.text = String(data: json, encoding: String.Encoding.utf8)
                    
                } catch {
                    print("JSON tuvo un error")
                }
            }
        }
        
        tarea.resume()
        
    
        
    }
    
}

