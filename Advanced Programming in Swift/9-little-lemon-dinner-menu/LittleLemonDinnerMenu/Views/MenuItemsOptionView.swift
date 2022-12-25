//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @EnvironmentObject var model: MenuViewViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        Button(action: {
                            switch category {
                            case .food: model.activeCategories = [category]
                            case .drink: model.activeCategories = [category]
                            case .dessert: model.activeCategories = [category]
                            }
                            presentationMode.wrappedValue.dismiss()
                  
                        }) {
                            Text(category.rawValue)
                                .foregroundColor(.black)
                        }
                        .buttonStyle(.plain)
                    }
                }
                Section(header: Text("SORT BY")) {
                    ForEach(SortMenuItems.allCases, id: \.self) { sortCase in
                        Button(action: {
                            switch sortCase {
                            case .mostPopular: model.sort(sortBy: sortCase)
                            case .price: model.sort(sortBy: sortCase)
                            case .descending: model.sort(sortBy: sortCase)
                            }
                            presentationMode.wrappedValue.dismiss()
                  
                        }) {
                            Text(sortCase.rawValue)
                                .foregroundColor(.black)
                        }
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
