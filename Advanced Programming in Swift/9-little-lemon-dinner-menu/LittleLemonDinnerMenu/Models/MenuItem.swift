//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

class MenuItem: Identifiable, MenuItemProtocol {
    var id: UUID
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var price: Int
    var ingredients: [Ingredient]
    var image: String
    
    init(id: UUID, title: String, menuCategory: MenuCategory, ordersCount: Int, price: Int, ingredients: [Ingredient], image: String) {
        self.id = id
        self.title = title
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.price = price
        self.ingredients = ingredients
        self.image = image
    }
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var price: Int { get set }
    var ingredients: [Ingredient] { get set }
}
