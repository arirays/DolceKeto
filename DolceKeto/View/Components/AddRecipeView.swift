//
//  AddRecipeView.swift
//  DolceKeto
//
//  Created by AS on 9/6/23.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name = ""
    @State private var description = ""
    @State private var ingredients = ""
    @State private var direction = ""
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("Direction")) {
                    TextEditor(text: $direction)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        DetailRecipeView(recipe: Recipe.testRecipes.sorted{ $0.datePublished > $1.datePublished} [0])
                        .navigationBarBackButtonHidden(true)
                    } label: {
                            Button {
                                navigateToRecipe = true
                            } label: {
                                Label("Done", systemImage: "checkmark")
                                    .labelStyle(.iconOnly)
                            }
                        
                        }
                    .disabled(name.isEmpty)
                    }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
