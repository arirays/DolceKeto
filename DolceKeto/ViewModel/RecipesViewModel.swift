//
//  RecipesViewModel.swift
//  DolceKeto
//

import Foundation
import SwiftUI


@MainActor final class RecipesViewModel: ObservableObject {
    
    @Published private(set) var recipes: [Recipe] = []
    @Published var isShowingDetail = false
    @Published var selectedRecipe: Recipe?
    @Published var isLoading = false
    
    init() {
        recipes = Recipe.testRecipes
        //getRecipe()
    }
    
    func getRecipes() {
        isLoading = true
        
        Task {
            do {
                recipes = try await NetworkManager.shared.fetchRecipes()
            } catch {
                //            alertItem = AlertContext.invalidResponse
            }
        }
    }
    
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
    
//    var favoriteRecipes: [Recipe] {
//        recipes.filter { $0.isFavorite }
//    }
    
    
    
    
}
