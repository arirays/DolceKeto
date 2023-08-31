//
//  HomeView.swift
//  DolceKeto
//
//  Created by AS on 8/30/23.
//

import SwiftUI

struct HomeView: View {
//    var recipe: Recipe
    
    var body: some View {
        NavigationView {
            List(Recipe.testRecipes) { recipe in
                Text(recipe.name)
                    .navigationTitle("My Recipes")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
