//
//  Customer+CoreDataProperties.swift
//  3-reading-and-writing-data-with-coredata
//
//  Created by Mike on 2/8/23.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var fullName: NSObject?
    @NSManaged public var email: NSObject?
    @NSManaged public var toDish: NSSet?

}

// MARK: Generated accessors for toDish
extension Customer {

    @objc(addToDishObject:)
    @NSManaged public func addToToDish(_ value: Dish)

    @objc(removeToDishObject:)
    @NSManaged public func removeFromToDish(_ value: Dish)

    @objc(addToDish:)
    @NSManaged public func addToToDish(_ values: NSSet)

    @objc(removeToDish:)
    @NSManaged public func removeFromToDish(_ values: NSSet)

}

extension Customer : Identifiable {

}
