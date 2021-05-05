//
//  ViewController.swift
//  acelerometro
//
//  Created by Marco Antonio Hernández Alba on 01/05/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    
    @IBOutlet weak var ejeX: UILabel!
    
    
    @IBOutlet weak var ejeY: UILabel!
    
    
    @IBOutlet weak var ejeZ: UILabel!
    
    var motion = CMMotionManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if motion.isDeviceMotionAvailable {
            print("Si esta disponible el Acelerómetro")
            obtieneAcelerometro()
        }
        else {
            print("NO esta disponible el Acelerómetro")
        }
        
        
    }
    
    func obtieneAcelerometro() {
        
        print("entro")
        motion.accelerometerUpdateInterval = 0.5
        motion.startAccelerometerUpdates(to: OperationQueue.current!){ (data, error) in
            
            print(data as Any)
            
            if let datos = data {
                self.view.reloadInputViews()
                
                let x = datos.acceleration.x
                let y = datos.acceleration.y
                let z = datos.acceleration.z
                
                self.ejeX.text = "x: \(Double(x))"
                self.ejeY.text = "y: \(Double(y))"
                self.ejeZ.text = "z: \(Double(z))"
                
                
                
            }
            
        }
    }


}

