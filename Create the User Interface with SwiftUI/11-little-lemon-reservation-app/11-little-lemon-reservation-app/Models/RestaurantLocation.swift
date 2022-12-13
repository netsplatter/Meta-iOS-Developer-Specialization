import SwiftUI

struct RestaurantLocation: Hashable {
    var city: String
    var state: String
    var number: String
    
    init(city: String = "",
         state: String = "",
         number: String = "") {
        self.city = city
        self.state = state
        self.number = number
    }
}
