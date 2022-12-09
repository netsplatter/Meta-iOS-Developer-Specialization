//
//  ContentView.swift
//  8-navigating-an-app
//
//  Created by Mike on 2022-12-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink("Do something", destination: NewView())
            }
            .navigationTitle("Little Lemon")
        }
        .padding()
    }
}

struct NewView: View {
    var body: some View {
        VStack {
            Text("NewView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
