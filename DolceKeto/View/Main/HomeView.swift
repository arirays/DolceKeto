//
//  HomeView.swift
//  DolceKeto
//
//  Created by AS on 8/30/23.
//

import SwiftUI

struct HomeView: View {
//    @EnvironmentObject var recipesVM: RecipesViewModel
    @ObservedObject var viewModel = RecipesViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                RecipeList(recipes: viewModel.recipe)
            }
            .navigationTitle("My Recipes")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
//            .environmentObject(RecipesViewModel())
    }
}
