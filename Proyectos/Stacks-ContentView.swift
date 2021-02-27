//
//  ContentView.swift
//  Stacks
//
//  Created by Marco Antonio Hernández Alba on 26/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("LargeTitle").font(.largeTitle).foregroundColor(.accentColor).padding().background(Color.yellow)
            //Text("LargeTitle").font(.largeTitle).foregroundColor(.accentColor).background(Color.yellow).padding()
            Text("Title").font(.title).foregroundColor(.accentColor)
            Text("Title 2").font(.title2).foregroundColor(.purple)
            Text("Title 3").font(.title3).foregroundColor(.secondary)
            Text("Body").font(.body).bold()
            //Text("Headline").font(.headline).padding(.bottom, 100)
            //Text("Headline").font(.headline)
            ZStack {
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity ).background(Color.red)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity ).background(Color.green).padding(20)
                Text("").frame(maxWidth: .infinity, maxHeight: .infinity ).background(Color.blue).padding(40)
                HStack {
                    Text("Elemento 1")
                    Text("Elemento 2")
                }
            }
            Text("Subheadline").font(.subheadline).padding(.leading, 100)
            Text("Footnote").font(.caption).italic()
            Text("caption").font(.caption).strikethrough()
            HStack {
                Text("Inicio").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Productos").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Servicios").font(.caption).foregroundColor(.accentColor).padding(10)
                Text("Contacto").font(.caption).foregroundColor(.accentColor).padding(10)
            }
            //Text("Elemento 11")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
