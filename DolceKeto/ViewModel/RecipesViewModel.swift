//
//  RecipesViewModel.swift
//  DolceKeto
//

import Foundation
import SwiftUI


@MainActor class RecipesViewModel: ObservableObject {
    
//    @Published private(set) var recipes: [Recipe] = []
    @Published var recipe: [Recipe] = []
    @Published var isShowingDetail = false
//    @Published var selectedRecipe: Recipe?
//    @Published var isLoading = false
    @Published var alertItem: AlertItem?
    
    init() {
//        recipe = Recipe.testRecipes
        getRecipes()
    }
    
    func getRecipes() {
//        isLoading = true
        
        Task {
            do {
                recipe = try await NetworkManager.shared.fetchRecipes()
            } catch {
                alertItem = AlertContext.invalidResponse
            }
        }
        
        
    }
    
    
//    func addRecipe(recipe: Recipe) {
//        recipes.append(recipe)
//    }
    
//    var favoriteRecipes: [Recipe] {
//        recipes.filter { $0.isFavorite }
//    }
}
