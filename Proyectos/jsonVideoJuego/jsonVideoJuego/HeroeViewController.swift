//
//  HeroeViewController.swift
//  jsonVideoJuego
//
//  Created by Marco Antonio Hernández Alba on 05/04/21.
//

import UIKit

class HeroeViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBOutlet weak var nombre: UILabel!
    
    
    var tituloDetalle:String?
    var fotoDetalle = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nombre.text = tituloDetalle
        
        imagen.image = fotoDetalle

    
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
