//
//  RecipesView.swift
//  RecipeApp
//
//  Created by Sean Fagan on 7/19/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack {
            Text("Recipes")

                NavigationView { // This is deprecated.
                    List(recipes) { recipe in
                        NavigationLink {
                            RecipeDetailView()
                        } label: {
                            RecipeItemView(recipe: recipe, service: inMemoryFavoritesService())
                            }
                        }
                }
            }
        }
}

private var recipes = [
    Recipe(
        id: "1",
        title: "Rice Pudding",
        cookTime: 30,
        author: "Cambodia",
        ingredients: [Ingredient(quantity: 2, item: "Cups of Rice"), Ingredient(quantity: 4, item: "Cups of Pudding")],
        directions: []
    ),
    
    Recipe(
        id: "2",
        title: "Taco Salad",
        cookTime: 20,
        author: "Mexico",
        ingredients: [Ingredient(quantity: 2, item: "Cups of Tacos"), Ingredient(quantity: 4, item: "Cups of Salad")],
        directions: []
    ),
    
    Recipe(
        id: "3",
        title: "Linguini Ravioli Cavatappi",
        cookTime: 40,
        author: "Sicily",
        ingredients: [Ingredient(quantity: 2, item: "Cups of Linguini"), Ingredient(quantity: 4, item: "Cups of Ravioli")],
        directions: []
    )
]

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
