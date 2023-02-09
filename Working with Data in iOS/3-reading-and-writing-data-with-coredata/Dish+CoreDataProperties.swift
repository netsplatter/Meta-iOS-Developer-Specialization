//
//  Dish+CoreDataProperties.swift
//  3-reading-and-writing-data-with-coredata
//
//  Created by Mike on 2/8/23.
//
//

import Foundation
import CoreData


extension Dish {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dish> {
        return NSFetchRequest<Dish>(entityName: "Dish")
    }

    @NSManaged public var name: NSObject?
    @NSManaged public var size: NSObject?
    @NSManaged public var price: NSObject?
    @NSManaged public var fromCustomer: NSSet?
    @NSManaged public var consumedBy: NSSet?

}

// MARK: Generated accessors for fromCustomer
extension Dish {

    @objc(addFromCustomerObject:)
    @NSManaged public func addToFromCustomer(_ value: Customer)

    @objc(removeFromCustomerObject:)
    @NSManaged public func removeFromFromCustomer(_ value: Customer)

    @objc(addFromCustomer:)
    @NSManaged public func addToFromCustomer(_ values: NSSet)

    @objc(removeFromCustomer:)
    @NSManaged public func removeFromFromCustomer(_ values: NSSet)

}

// MARK: Generated accessors for consumedBy
extension Dish {

    @objc(addConsumedByObject:)
    @NSManaged public func addToConsumedBy(_ value: Customer)

    @objc(removeConsumedByObject:)
    @NSManaged public func removeFromConsumedBy(_ value: Customer)

    @objc(addConsumedBy:)
    @NSManaged public func addToConsumedBy(_ values: NSSet)

    @objc(removeConsumedBy:)
    @NSManaged public func removeFromConsumedBy(_ values: NSSet)

}

extension Dish : Identifiable {

}
