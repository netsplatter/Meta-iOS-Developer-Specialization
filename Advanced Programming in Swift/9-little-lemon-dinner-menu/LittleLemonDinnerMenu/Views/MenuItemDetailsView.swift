//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.image)
                .padding()
            
            Text("Price:")
                .fontWeight(.bold)
            Text("\(item.price)")
                .padding(.bottom, 5)
            
            Text("Ordered:")
                .fontWeight(.bold)
            Text("\(item.ordersCount)")
                .padding(.bottom, 5)
            
            Text("Ingredients:")
                .fontWeight(.bold)
            ForEach(item.ingredients, id: \.self) { ingredient in
                Text(ingredient.rawValue)
            }
            
            Spacer()
        }
        .navigationTitle(item.title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: MenuViewViewModel().foodMenuItems[0])
    }
}
