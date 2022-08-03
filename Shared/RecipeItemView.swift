//
//  RecipeItemView.swift
//  RecipeApp
//
//  Created by Sean Fagan on 7/26/22.
//

import SwiftUI

struct RecipeItemView: View {
    let recipe: Recipe
    
    var body: some View {

        HStack {
            AsyncImage(url: URL(string:"https://popmenucloud.com/cdn-cgi/image/width=1200,height=630,format=auto,fit=cover/hfxlgkwn/0e4a7f6e-b58e-4828-8e7f-16f0d27cb4d2.jpg")
            ) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            Spacer()
            VStack {
                Text(recipe.title)
                Text("\(recipe.cookTime) minutes")
            }
        }.frame(height: 150)    }
}

struct RecipeItemView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItemView(recipe: Recipe(
            id: "1",
            title: "Rice Pudding",
            cookTime: 30,
            author: "Cambodia",
            ingredients: [Ingredient(quantity: 2, item: "Cups of Rice"), Ingredient(quantity: 4, item: "Cups of Pudding")],
            directions: ["Cook it"]
            )
        )
    }
}
