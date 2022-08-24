//
//  ContentView.swift
//  Shared
//
//  Created by Sean Fagan on 7/19/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        let service = inMemoryFavoritesService()
        
        TabView {
            RecipesView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Recipes")
                }
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
