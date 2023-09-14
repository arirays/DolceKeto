//
//  DolceKetoApp.swift
//  DolceKeto
//
//  Created by AS on 8/29/23.
//

import SwiftUI

@main
struct DolceKetoApp: App {
    
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
