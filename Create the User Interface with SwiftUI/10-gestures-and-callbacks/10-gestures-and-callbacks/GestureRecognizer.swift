//
//  GestureRecognizer.swift
//  10-gestures-and-callbacks
//
//  Created by Mike on 12/8/22.
//

import SwiftUI

struct GestureRecognizer: View {
    @State var flag: Bool = false
    
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? .green : .yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        GestureRecognizer()
    }
}
