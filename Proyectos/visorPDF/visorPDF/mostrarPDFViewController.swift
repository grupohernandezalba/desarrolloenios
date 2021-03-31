//
//  mostrarPDFViewController.swift
//  visorPDF
//
//  Created by Marco Antonio Hernández Alba on 29/03/21.
//

import UIKit
import WebKit

class mostrarPDFViewController: UIViewController, WKNavigationDelegate {

    var vistaWeb:WKWebView!
    
    var tituloPDF:String?
    
    var nombrePDF:String?
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vistaWeb.allowsBackForwardNavigationGestures = true
        visualizaPDF()

    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        
    }
    
    func visualizaPDF(){
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
        
        
    }

}
