//
//  RecipeCard.swift
//  DolceKeto
//
//  Created by AS on 9/1/23.
//

import SwiftUI

struct RecipeCard: View {
    
    var recipe: Recipe
//    @ObservedObject var viewModel: RecipesViewModel

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(recipe.label)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        Text(recipe.label)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
//        RecipeCard(recipe: Recipe.testRecipes[0])
        RecipeCard(recipe: Recipe.testRecipes[0])
    }
}



