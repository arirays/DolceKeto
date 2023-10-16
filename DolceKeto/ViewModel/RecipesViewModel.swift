//
//  RecipesViewModel.swift
//  DolceKeto
//
//  Created by AS on 9/6/23.
//

import Foundation


@MainActor
class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    @Published var isLoading = false
    
    init() {
        recipes = Recipe.testRecipes
        //getRecipe()
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
    
//    var favoriteRecipes: [Recipe] {
//        recipes.filter { $0.isFavorite }
//    }
    
    func getRecipes() {
        isLoading = true
        
        Task {
            do {
//                recipes = try await NetworkManager.shared.getRecipes()
            } catch {
                //            alertItem = AlertContext.invalidResponse
            }
        }
    }
    
    
}
