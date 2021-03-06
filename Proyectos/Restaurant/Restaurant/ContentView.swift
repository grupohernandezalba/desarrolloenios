//
//  ContentView.swift
//  Restaurant
//
//  Created by Marco Antonio Hernández Alba on 06/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var platillos:[Platillo] = []
    
    var body: some View {
        
        NavigationView {
            List(platillos) { platillo in
                listaPlatillos(platillo:platillo)
            }
            .navigationTitle("Restaurant menú")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(platillos: datos)
    }
}


struct listaPlatillos: View {
    var platillo:Platillo
    var body: some View {
        
        NavigationLink(destination: Text(platillo.nombre)){
            Image(platillo.imagenMini)
                .cornerRadius(9)
            VStack {
                Text(platillo.nombre)
                Text("\(platillo.ingredientes) ingredientes").font(.subheadline).foregroundColor(.gray)
            }
        }

    }
}

