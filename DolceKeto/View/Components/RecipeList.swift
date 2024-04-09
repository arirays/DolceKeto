//
//  RecipeList.swift
//  DolceKeto
//
//  Created by AS on 9/1/23.
//

import SwiftUI

struct RecipeList: View {
    
    var recipes: [Recipe]
    @StateObject var viewModel = RecipesViewModel()
    @State private var isShowingDetail = false
    @State private var selectedRecipe: Recipe?
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
            NavigationStack {
                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach(viewModel.recipe) { recipe in
//                        RecipeCard(recipe: recipe)
//                    }
                    ForEach(viewModel.recipe) { recipe in
                        NavigationLink(destination: DetailRecipeView(recipe: recipe, isShowingDetail: $isShowingDetail)) {
                            RecipeCard(recipe: recipe)
                        }
                    }
                }
                .padding()
            }
//            .task {
//                viewModel.getRecipes()
//            }
    }
    
  /*  var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("\(viewModel.recipe.count) \(viewModel.recipe.count > 1 ? "recipes" : "recipe")")
                        .font(.headline)
                        .fontWeight(.medium)
                        .opacity(0.7)
                    
                    Spacer()
                }
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                    ForEach(viewModel.recipe) { recipe in
                        NavigationLink(destination: DetailRecipeView(recipe: recipe, isShowingDetail: $isShowingDetail)) {
                            RecipeCard(recipe: recipe)
                        }
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
        .task {
            viewModel.getRecipes()
        }
    }
   */
}


struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: Recipe.testRecipes)
        }
    }
}

