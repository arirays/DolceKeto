//
//  RecipesViewModel.swift
//  DolceKeto
//
//  Created by AS on 9/6/23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
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
    
    
    
    let baseUrl = ""
    let recipeURL = ""
    
    func getRecipe() async throws -> [Recipe] {
        guard let url = URL(string: recipeURL) else {
            throw DKError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            let decodedResponse = try decoder.decode(RecipeResponse.self, from: data)
            return decodedResponse.request
        } catch {
            throw DKError.invalidData
        }
    }
    
}
