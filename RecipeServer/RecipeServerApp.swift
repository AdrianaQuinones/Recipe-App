//
//  RecipeServerApp.swift
//  RecipeServer
//
//  Created by Adriana Quinones on 8/26/23.
//

import SwiftUI

@main
struct RecipeServerApp: App {
    @StateObject var recipeViewModel = RecipeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
