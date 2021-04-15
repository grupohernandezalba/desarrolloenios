//
//  detalleViewController.swift
//  jsonFarmacia
//
//  Created by Marco Antonio Hernández Alba on 12/04/21.
//

import UIKit

class detalleViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var dosis: UILabel!
    
    @IBOutlet weak var sustancia: UILabel!
    
    
    var nombreDetalle:String?
    var imagenDetalle = UIImage()
    var dosisDetalle:String?
    var sustanciaDetalle:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombre.text = nombreDetalle
        imagen.image = imagenDetalle
        dosis.text = dosisDetalle
        sustancia.text = sustanciaDetalle
    }
    

}
