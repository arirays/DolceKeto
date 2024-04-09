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
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
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
                                    .frame(width: 180, alignment: .leading)
                                    .background(.ultraThinMaterial)
                                    .clipShape(RoundedRectangle(cornerRadius: 35))
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
            
            Button {
                print("Added to favorites!")
            } label: {
                Image(systemName: "heart")
                    .padding(10)
                    .foregroundStyle(.white)
                    .background(.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding()
            }
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.testRecipes[0])
    }
}



