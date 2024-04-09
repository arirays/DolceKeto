//
//  DetailRecipeView.swift
//  DolceKeto
//
//  Created by AS on 8/30/23.
//

import SwiftUI

struct DetailRecipeView: View {
    
    @State var recipe: Recipe
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.white.opacity(0.7))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .frame(height: 300)
                    .background(Color.gray)
                    
                    
                    VStack(spacing: 30) {
                        
                        Text(recipe.label)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3)
                            .frame(maxWidth: 300)
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        VStack(alignment: .leading, spacing: 30) {
                            if !$recipe.ingredientLines.isEmpty {
                                VStack(alignment: .leading, spacing: 20) {
                                    Text("Ingredients")
                                        .fontWeight(.semibold)
                                    ForEach(recipe.ingredientLines, id: \.self) { ingredient in
                                        Text(ingredient)
                                    }
                                }
                            }
                        }
                        
                        .frame(maxWidth: 300, alignment: .leading)
                    }
                }
            }
            
            //                        .toolbar {
            //                            ToolbarItem {
            //                                HStack {
            //                                    Button(action: {
            //                                        recipe.isFavorite.toggle()
            //                                    }) {
            //                                        Image(systemName: recipe.isFavorite ? "heart.fill" : "heart")
            //                                    }
            //                                }
            //                            }
            //                        }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    DetailRecipeView(recipe: Recipe.testRecipes[2], isShowingDetail: .constant(true))
}



