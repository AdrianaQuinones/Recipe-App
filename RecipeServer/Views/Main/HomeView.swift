//
//  HomeView.swift
//  RecipeServer
//
//  Created by Adriana Quinones on 8/27/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var  recipesVM: RecipeViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
