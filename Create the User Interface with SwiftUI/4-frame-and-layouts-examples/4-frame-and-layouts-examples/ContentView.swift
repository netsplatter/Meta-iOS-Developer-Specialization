//
//  ContentView.swift
//  4-frame-and-layouts-examples
//
//  Created by Mike on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()
            HStack {
                Button("One") {}
                Button("Two") {}
                Button("Three") {}
            }
        }
        .frame(width: 300, alignment: .leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
