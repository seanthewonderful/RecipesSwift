//
//  FavoritesService.swift
//  RecipeApp
//
//  Created by Sean Fagan on 8/23/22.
//

import Foundation

protocol favoritesService {
    func addRecipeToFavorites(recipe: Recipe)
    func removeRecipeFromFavorites(recipe: Recipe)
}

class inMemoryFavoritesService: favoritesService, ObservableObject {
//    @Published var favorites : [Recipe] =  []
    
    func addRecipeToFavorites(recipe: Recipe) {
        favorites.append(recipe)
    }
    
    func removeRecipeFromFavorites(recipe: Recipe) {
        let index = favorites.firstIndex { $0.id == recipe.id }
        guard let index = index else {
            return
        }
        favorites.remove(at: index)
    }
    
    
}
