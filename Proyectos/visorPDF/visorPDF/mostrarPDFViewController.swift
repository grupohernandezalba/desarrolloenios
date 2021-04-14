//
//  mostrarPDFViewController.swift
//  visorPDF
//
//  Created by Marco Antonio Hernández Alba on 03/04/21.
//

import UIKit
import WebKit

class mostrarPDFViewController: UIViewController, WKNavigationDelegate {

    var vistaWeb:WKWebView!
    
    var tituloPDF:String?
    
    var nombrePDF:String?
    
    
    override func loadView(){
        
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vistaWeb.allowsBackForwardNavigationGestures = true
        visualizaPDF()
        
    }
    
    func visualizaPDF(){
        
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        vistaWeb.load(datosPDF!, mimeType: "application/pdf",characterEncodingName: "utf-8", baseURL: direccionPDF)
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
