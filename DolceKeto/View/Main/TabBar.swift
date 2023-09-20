//
//  TabBar.swift
//  DolceKeto
//
//  Created by AS on 8/30/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                Label("Home", systemImage: "house")
            }
            FavoritesView()
                .tabItem {
                Label("Favorites", systemImage: "heart.fill")
            }
            NewRecipeView()
                .tabItem {
                Label("New Recipe", systemImage: "plus")
            }
            SettingsView()
                .tabItem {
                Label("Settings", systemImage: "gear")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
