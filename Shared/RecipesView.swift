//
//  RecipesView.swift
//  RecipeApp
//
//  Created by Sean Fagan on 7/19/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        List(recipes) { recipe in
            VStack {
                Text(recipe.title)
                Text("\(recipe.cookTime) minutes")
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
        title: "Rice Pudding",
        cookTime: 30,
        author: "Cambodia",
        ingredients: [Ingredient(quantity: 2, item: "Cups of Rice"), Ingredient(quantity: 4, item: "Cups of Pudding")],
        directions: []
    ),
    
    Recipe(
        id: "3",
        title: "Rice Pudding",
        cookTime: 30,
        author: "Cambodia",
        ingredients: [Ingredient(quantity: 2, item: "Cups of Rice"), Ingredient(quantity: 4, item: "Cups of Pudding")],
        directions: []
    )
]

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
