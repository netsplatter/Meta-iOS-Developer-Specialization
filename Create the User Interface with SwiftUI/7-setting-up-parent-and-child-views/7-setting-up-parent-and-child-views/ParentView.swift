//
//  ParentView.swift
//  7-setting-up-parent-and-child-views
//
//  Created by Mike on 2022-12-07.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 50, height: 50)
            
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(.yellow)
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 30)
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
