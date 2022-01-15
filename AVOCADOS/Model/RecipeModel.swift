//
//  RecipeModel.swift
//  AVOCADOS
//
//  Created by marco rodriguez on 14/01/22.
//

import SwiftUI

// MARK: - Recipe Model

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
