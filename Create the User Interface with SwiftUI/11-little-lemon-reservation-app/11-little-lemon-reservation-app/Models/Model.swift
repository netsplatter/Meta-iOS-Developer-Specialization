import SwiftUI

class Model: ObservableObject {
    @Published var displayingReservationForm: Bool = false
    @Published var reservation = Reservation()
    @Published var tabBarChanged = false
    
    @Published var tabViewSelectedIndex = Int.max {
      didSet {
        tabBarChanged = true
      }
    }
    
    @Published var restaurants: [RestaurantLocation] = [
        RestaurantLocation(city: "Pontiac", state: "IL", number: "815-844-7260"),
        RestaurantLocation(city: "Tucson", state: "AZ", number: "520-203-7916"),
        RestaurantLocation(city: "Bryans Corner", state: "MA", number: "580-361-3348"),
        RestaurantLocation(city: "Chelsea", state: "MA", number: "617-660-3065"),
        RestaurantLocation(city: "Charlotte", state: "NC", number: "704-525-2472"),
        RestaurantLocation(city: "Phoenix", state: "AZ", number: "602-594-3793"),
        RestaurantLocation(city: "New Brunswick", state: "NJ", number: "908-557-8066")
    ]
}
