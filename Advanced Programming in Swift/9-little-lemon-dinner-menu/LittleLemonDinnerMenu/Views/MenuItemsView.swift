//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject var model = MenuViewViewModel()
    @State var presentOptions = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(model.activeCategories, id: \.self) { category in
                    switch category {
                    case .food: MenuItemView(category: .food, menuItems: model.foodMenuItems)
                    case .drink: MenuItemView(category: .drink, menuItems: model.drinkMenuItems)
                    case .dessert: MenuItemView(category: .dessert, menuItems: model.dessertMenuItems)
                    }
                }
            }
            .navigationTitle("Menu")
            .toolbar {
                Button(action: {presentOptions = true}) {
                    Image(systemName: "slider.horizontal.3")
                }
            }
        }
        .sheet(isPresented: $presentOptions) {
            MenuItemsOptionView().environmentObject(model)
        }
    }
}

struct MenuItemView: View {
    let category: MenuCategory
    let menuItems: [MenuItem]
    let gridItemLayout = [GridItem(.flexible(), spacing: 10, alignment: .top), GridItem(.flexible(), spacing: 10, alignment: .top), GridItem(.flexible(), spacing: 10, alignment: .top)]
    let randomNumber = Int.random(in: 1...30000)
    
    var body: some View {
        LazyVStack {
            HStack {
                Text(category.rawValue)
                    .font(.title)
                    .padding()
                Spacer()
            }
            
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach(menuItems) { menuItem in
                    NavigationLink(destination: MenuItemDetailsView(item: menuItem)) {
                        VStack {
                            Image(menuItem.image)
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.width / 3.5)
                            
                            Text(menuItem.title)
                                .font(.body)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("$\(menuItem.price)")
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding([.leading, .trailing], 20)
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
