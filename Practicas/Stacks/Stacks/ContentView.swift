//
//  ContentView.swift
//  Stacks
//
//  Created by Marco Antonio Hernández Alba on 27/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("largeTitle").font(.largeTitle).foregroundColor(.accentColor).padding().background(Color.yellow)
            Text("Title").font(.title).foregroundColor(.gray)
            Text("Title2").font(.title2).foregroundColor(.purple)
            Text("Title3").font(.footnote).foregroundColor(.secondary)
        
            
            Text("Body").font(.body).bold()
            Text("HEadline").font(.headline).padding(.bottom, 100)
            Text("Subheading").font(.subheadline).italic()
            Text("caption").font(.caption).strikethrough()
            
            
            ZStack {
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.red)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.green).padding(20)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.blue).padding(40)
                HStack {
                    Text("Elemento 1")
                    Text("Elemento 2")
                }
            }
            
            HStack {
                Text("Inicio").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Productos").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Servicios").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Contacto").font(.caption).foregroundColor(.accentColor).padding(10)
            }
            

            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
            ContentView()
        }
    }
}
