//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                    }
                }
                Section(header: Text("SORT BY")) {
                    ForEach(SortMenuItems.allCases, id: \.self) { item in
                        Text(item.rawValue)
                    }
                }
            }
            .navigationTitle("Filter")
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
