//
//  PetsApp.swift
//  Pets
//
//  Created by Fransiscus Verrol Yaurentius on 15/07/21.
//

import SwiftUI

@main
struct PetsApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            HomePage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
