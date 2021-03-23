//
//  ViewController.swift
//  NavigationController-2
//
//  Created by Marco Antonio Hernández Alba on 22/03/21.
//

import UIKit

class ViewController: UIViewController {

    let boton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor =  UIColor.blue
        view.backgroundColor = .systemBlue
        
        boton.setTitle("Ir al segundo VC", for: .normal)
        boton.backgroundColor = .white
        boton.setTitleColor(.blue, for: .normal)
        boton.frame = CGRect(x: 50, y:50, width: 200, height: 50)
        boton.addTarget(self, action: #selector(tapSegundoVC), for:.touchUpInside)
        view.addSubview(boton)
        
    }
    
    @objc private func tapSegundoVC(){
        
        let rootVC = SegundoViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
        
    }


}

class SegundoViewController : UIViewController {
    
    let boton = UIButton()
    
    override func viewDidLoad() {
        view.backgroundColor = .red
        self.title = "Segundo VC"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Regresar", style: .plain, target: self, action: #selector(regresarPrimerVC))
        
        
        
    }
    
    @objc private func regresarPrimerVC(){
        dismiss(animated: true, completion: nil)
    }
    
    
}




