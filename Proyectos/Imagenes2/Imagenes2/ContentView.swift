//
//  ContentView.swift
//  Imagenes2
//
//  Created by Marco Antonio Hernández Alba on 05/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Text("Bienvenido").font(.title).padding()
            Image("logo").resizable().scaledToFill().scaledToFit()
            Spacer()
            Image("foto").resizable().padding(30).scaledToFill().scaledToFit().background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.blue)).shadow(color: Color.gray, radius: 5)
            Spacer()
            Image(systemName: "moon.circle.fill").resizable().padding(20).scaledToFit().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("Todos los derechos reservados 2021").font(.caption).padding()
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
