//
//  ViewController.swift
//  CiclodeVidaViewController
//
//  Created by Marco Antonio Hernández Alba on 29/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("La APP entró a viewDidLoad")
    }

    
    override func loadView() {
        super.loadView()
        print("La APP entró a loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("La APP entró a viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("La APP entró a viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("La APP entró a viewWillDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("La APP entró a didReceiveMemoryWarning")
    }

}

