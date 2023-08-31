//
//  DetailRecipeView.swift
//  DolceKeto
//
//  Created by AS on 8/30/23.
//

import SwiftUI

struct DetailRecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
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
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    Text(recipe.description)
                    
                    VStack(alignment: .leading,spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipe.ingredients)
                    }
                    
                    VStack(alignment: .leading,spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                        Text(recipe.directions)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}


struct DetailRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRecipeView(recipe: Recipe.testRecipes[0])
    }
}
