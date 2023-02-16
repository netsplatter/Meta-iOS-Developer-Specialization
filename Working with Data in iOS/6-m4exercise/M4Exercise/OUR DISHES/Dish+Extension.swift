import Foundation
import CoreData


extension Dish {

    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        let objects: [Dish]
        for item in menuItems {
            objects.append(Dish(name: item.title, insertInto: <#T##NSManagedObjectContext?#>))
        }
        
    }
    
}
