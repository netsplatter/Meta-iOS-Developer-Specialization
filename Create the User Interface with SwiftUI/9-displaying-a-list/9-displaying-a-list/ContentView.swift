//
//  ContentView.swift
//  9-displaying-a-list
//
//  Created by Mike on 2022-12-08.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    var body: some View {
        VStack {
            List(model.items) {
                Text($0.name)
            }
        }
        .padding()
    }
}

struct Item: Identifiable {
    let name: String
    let id = UUID()
}

class Model: ObservableObject {
    @Published var items: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocato Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
