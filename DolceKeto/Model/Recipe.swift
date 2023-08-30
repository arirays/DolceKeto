//
//  Recipe.swift
//  DolceKeto
//
//  Created by AS on 8/29/23.
//

import Foundation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let created: String
    let url: String
}
