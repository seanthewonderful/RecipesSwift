//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Sean Fagan on 8/23/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")

                NavigationView { // This is deprecated.
                    List(favorites) { favorite in
                        NavigationLink {
                            RecipeDetailView()
                        } label: {
                            RecipeItemView(recipe: favorite, service: inMemoryFavoritesService())
                            }
                        }
                }
            }
    }
}

var favorites : [Recipe] =  []

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
