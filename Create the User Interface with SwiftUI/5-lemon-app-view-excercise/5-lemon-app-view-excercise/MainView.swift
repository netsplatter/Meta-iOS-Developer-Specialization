//
//  MainView.swift
//  5-lemon-app-view-excercise
//
//  Created by Mike on 2022-12-07.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 10) {
                Text("Demo")
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                VStack(spacing: 10) {
                    Text("Little Lemon")
                        .font(.title)
                    Text("Tomato Tortellini, Bottarga and Carbonara")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
