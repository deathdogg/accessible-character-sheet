//
//  Accessible_Character_SheetApp.swift
//  Accessible Character Sheet
//
//  Created by Ricardo Herrera on 10/24/22.
//

import SwiftUI

@main
struct Accessible_Character_SheetApp: App {
	@StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
										.environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
