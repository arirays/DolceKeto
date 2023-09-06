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
    }
}
