import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [], animation: .default)
    private var desserts: FetchedResults<Dessert>
    
    var body: some View {
        NavigationView{
            VStack{
                Text("DESSERTS")
                    .font(.title)
                List {
                    ForEach(desserts) { dessert in
                        VStack(alignment:.leading){
                            Text (dessert.name!)
                                .font(.system(size: 16, weight: .bold))

                            HStack{
                                Text (dessert.size!)
                                Spacer()
                                Text("$\(dessert.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }
                        }
                    }
                }
            }
           .onAppear{createDesserts()}
        }
    }

    func createDesserts() {
        let profiterole = Dessert(context: viewContext)
        profiterole.name = "Profiterole"
        profiterole.size = "large"
        profiterole.price = 2.99
        
        let cremeBurlee = Dessert(context: viewContext)
        cremeBurlee.name = "Crème Burlée"
        cremeBurlee.size = "medium"
        cremeBurlee.price = 3.99
        
        let iceCream = Dessert(context: viewContext)
        iceCream.name = "Ice Cream"
        iceCream.size = "xlarge"
        iceCream.price = 5.99
        
        let applePie = Dessert(context: viewContext)
        applePie.name = "Apple Pie"
        applePie.size = "small"
        applePie.price = 2.99
        
        let imperatrice = Dessert(context: viewContext)
        imperatrice.name = "Riz à l'impératrice"
        imperatrice.size = "small"
        imperatrice.price = 2.99
        
        let cheeseCake = Dessert(context: viewContext)
        cheeseCake.name = "Cheese Cake"
        cheeseCake.size = "xsmall"
        cheeseCake.price = 4.99
        
        let carrotCake = Dessert(context: viewContext)
        carrotCake.name = "Carrot Cake"
        carrotCake.size = "standard"
        carrotCake.price = 3.99
        
        let piece = Dessert(context: viewContext)
        piece.name = "Pièce montée"
        piece.size = "standard"
        piece.price = 5.99
        
        let eclair = Dessert(context: viewContext)
        eclair.name = "Éclair"
        eclair.size = "large"
        eclair.price = 3.99

        let crepe = Dessert(context: viewContext)
        crepe.name = "Crêpe Suzette"
        crepe.size = "xlarge"
        crepe.price = 3.99
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
