import SwiftUI

struct RestaurantView: View {
    var restaurant: RestaurantLocation
    
    init(_ restaurant: RestaurantLocation) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(restaurant.city)
                .font(.title)
            Text("\(restaurant.state) - \(restaurant.number)")
                .foregroundColor(.gray)
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        let model = Model()
        RestaurantView(model.restaurants[0])
    }
}
