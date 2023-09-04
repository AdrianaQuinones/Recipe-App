//
//  NewRecipeView.swift
//  RecipeServer
//
//  Created by Adriana Quinones on 8/27/23.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView{
            Button("Add recipe manually"){
                showAddRecipe =  true
            }
                .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
