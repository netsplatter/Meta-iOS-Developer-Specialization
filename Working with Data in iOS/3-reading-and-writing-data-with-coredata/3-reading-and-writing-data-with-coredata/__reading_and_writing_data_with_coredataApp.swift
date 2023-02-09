//
//  __reading_and_writing_data_with_coredataApp.swift
//  3-reading-and-writing-data-with-coredata
//
//  Created by Mike on 2/8/23.
//

import SwiftUI

@main
struct __reading_and_writing_data_with_coredataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
