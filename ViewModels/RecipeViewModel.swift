//
//  RecipeViewModel.swift
//  RecipeServer
//
//  Created by Adriana Quinones on 8/27/23.
//

import Foundation
class RecipeViewModel: ObservableObject{
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
