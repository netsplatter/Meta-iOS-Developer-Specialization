import Foundation
import CoreData


extension Dish {
    static func createDishesFrom(menuItems:[MenuItem], _ context: NSManagedObjectContext) {
        for item in menuItems {
            if !isDuplicate(item, context) {
                let newDish = Dish(context: context)
                newDish.name = item.title
                newDish.price = Float(item.price)!
            }
        }
        
        do {
            try context.save()
        } catch {
            print("Error saving data: \(error)")
        }
        
        // delete all Dish data
//        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Dish")
//        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
//
//        do {
//            try context.execute(deleteRequest)
//        } catch let error as NSError {}
    }
    
    static func isDuplicate(_ item: MenuItem, _ context: NSManagedObjectContext) -> Bool {
        let fetchRequest: NSFetchRequest<Dish> = Dish.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "name == %@", item.title)

        do {
            print(item.title)
            let results = try context.fetch(fetchRequest)
            if results.count > 0 {
                print("Dish with name '\(item.title)' already exists in database")
                return true
            }
        } catch {
            print("Error fetching data: \(error)")
        }

        return false
    }
}
