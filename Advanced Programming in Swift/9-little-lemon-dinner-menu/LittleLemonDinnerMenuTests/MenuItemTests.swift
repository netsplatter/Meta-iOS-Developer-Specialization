//
//  MenuItemTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Mike on 12/24/22.
//

import XCTest
@testable import LittleLemonDinnerMenu

class MenuItemTests: XCTestCase {
    func test_firstFoodItemTitle() {
        let model = MenuViewViewModel()
        let menuItemTitle = model.foodMenuItems[0].title
        
        XCTAssertEqual(menuItemTitle, "Pizza Margherita")
    }

    func test_firstFoodItemIngredients() {
        let model = MenuViewViewModel()
        let menuItemIngredients = model.foodMenuItems[0].ingredients
        
        XCTAssertEqual(menuItemIngredients, [.tomatoSauce, .mozzarella])
    }
}
