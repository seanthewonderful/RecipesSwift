//
//  RecipeItemView.swift
//  RecipeApp
//
//  Created by Sean Fagan on 7/26/22.
//

import SwiftUI

struct RecipeItemView: View {
    let recipe: Recipe
    let service: favoritesService
    @State var isFavorite: Bool = false
    
    var body: some View {

        HStack (spacing: 0) {
            AsyncImage(url: URL(string:"https://popmenucloud.com/cdn-cgi/image/width=1200,height=630,format=auto,fit=cover/hfxlgkwn/0e4a7f6e-b58e-4828-8e7f-16f0d27cb4d2.jpg")
            ) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity)
            } placeholder: {
                ProgressView()
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            Spacer()
            VStack {
                Image(systemName: isFavorite ? "heart.fill" : "heart").onTapGesture {
                    if isFavorite {
                        service.removeRecipeFromFavorites(recipe: recipe)
                    } else {
                        service.addRecipeToFavorites(recipe: recipe)
                    }
                    isFavorite.toggle()
                }
                Text(recipe.title)
                Text("\(recipe.cookTime) minutes")
            }.frame(minWidth: 0, maxWidth: .infinity)
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
            ), service: inMemoryFavoritesService()
        )
    }
}
