//
//  MenuViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Mike on 12/23/22.
//

import SwiftUI

class MenuViewModel: ObservableObject {
    let foodMenuItems: [MenuItem] = [
        MenuItem(id: UUID(), title: "Pizza Margherita", menuCategory: .food, ordersCount: 0, price: 12, ingredients: [.tomatoSauce, .mozzarella], image: "1"),
        MenuItem(id: UUID(), title: "Spaghetti Carbonara", menuCategory: .food, ordersCount: 0, price: 15, ingredients: [.pasta, .egg, .bacon, .parmesan], image: "2"),
        MenuItem(id: UUID(), title: "Lasagna", menuCategory: .food, ordersCount: 0, price: 18, ingredients: [.pasta, .beef, .tomatoSauce, .mozzarella], image: "3"),
        MenuItem(id: UUID(), title: "Bruschetta", menuCategory: .food, ordersCount: 0, price: 8, ingredients: [.bread, .tomato, .basil], image: "4"),
        MenuItem(id: UUID(), title: "Caprese Salad", menuCategory: .food, ordersCount: 0, price: 12, ingredients: [.tomato, .mozzarella, .basil], image: "5"),
        MenuItem(id: UUID(), title: "Eggplant Parmesan", menuCategory: .food, ordersCount: 0, price: 14, ingredients: [.eggplant, .tomatoSauce, .mozzarella], image: "6"),
        MenuItem(id: UUID(), title: "Risotto Milanese", menuCategory: .food, ordersCount: 0, price: 16, ingredients: [.arborioRice, .saffron, .beefBroth, .parmesan], image: "7"),
        MenuItem(id: UUID(), title: "Pizza Margherita", menuCategory: .food, ordersCount: 0, price: 12, ingredients: [.tomatoSauce, .mozzarella], image: "8"),
        MenuItem(id: UUID(), title: "Spaghetti Carbonara", menuCategory: .food, ordersCount: 0, price: 15, ingredients: [.pasta, .egg, .bacon, .parmesan], image: "9"),
        MenuItem(id: UUID(), title: "Lasagna", menuCategory: .food, ordersCount: 0, price: 18, ingredients: [.pasta, .beef, .tomatoSauce, .mozzarella], image: "10"),
        MenuItem(id: UUID(), title: "Bruschetta", menuCategory: .food, ordersCount: 0, price: 8, ingredients: [.bread, .tomato, .basil], image: "11"),
        MenuItem(id: UUID(), title: "Caprese Salad", menuCategory: .food, ordersCount: 0, price: 12, ingredients: [.tomato, .mozzarella, .basil], image: "12")
    ]
    let drinkMenuItems: [MenuItem] = [
        MenuItem(id: UUID(), title: "Espresso", menuCategory: .drink, ordersCount: 0, price: 3, ingredients: [.espressoBeans, .water], image: "13"),
        MenuItem(id: UUID(), title: "Cappuccino", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.espresso, .milk, .foam], image: "14"),
        MenuItem(id: UUID(), title: "Latte", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.espresso, .milk], image: "15"),
        MenuItem(id: UUID(), title: "Italian Soda", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.carbonatedWater, .syrup], image: "16"),
        MenuItem(id: UUID(), title: "Espresso", menuCategory: .drink, ordersCount: 0, price: 3, ingredients: [.espressoBeans, .water], image: "17"),
        MenuItem(id: UUID(), title: "Cappuccino", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.espresso, .milk, .foam], image: "18"),
        MenuItem(id: UUID(), title: "Latte", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.espresso, .milk], image: "19"),
        MenuItem(id: UUID(), title: "Italian Soda", menuCategory: .drink, ordersCount: 0, price: 4, ingredients: [.carbonatedWater, .syrup], image: "20")
    ]
    let dessertMenuItems: [MenuItem] = [
        MenuItem(id: UUID(), title: "Gelato", menuCategory: .dessert, ordersCount: 0, price: 5, ingredients: [.cream, .milk, .sugar, .flavorings], image: "21"),
        MenuItem(id: UUID(), title: "Tiramisu", menuCategory: .dessert, ordersCount: 0, price: 8, ingredients: [.mascarpone, .espresso, .cocoa, .ladyfingers], image: "22"),
        MenuItem(id: UUID(), title: "Cannoli", menuCategory: .dessert, ordersCount: 0, price: 6, ingredients: [.ricotta, .sugar, .chocolateChips, .pastryCrust], image: "23"),
        MenuItem(id: UUID(), title: "Panna Cotta", menuCategory: .dessert, ordersCount: 0, price: 7, ingredients: [.cream, .milk, .sugar, .vanilla], image: "24")
    ]
}
