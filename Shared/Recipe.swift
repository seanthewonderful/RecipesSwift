//
//  Recipe.swift
//  RecipeApp
//
//  Created by Sean Fagan on 7/19/22.
//


struct Recipe : Identifiable {
    let id: String
    let title: String
    let cookTime: Int
    let author: String
    let ingredients: [Ingredient]
    let directions: [String]
    
}

struct Ingredient {
    let quantity: Int
    let item: String
}

