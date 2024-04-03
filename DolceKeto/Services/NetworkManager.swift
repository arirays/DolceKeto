//
//  Services.swift
//  DolceKeto
//
//  Created by AS on 9/12/23.
//

import Foundation
import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    private let urlString = "https://api.edamam.com/api/recipes/v2?type=public&app_id=d1ed5062&app_key=e144b997943e3f6969fc0ea89fa1ede6&diet=low-carb&mealType=Teatime&dishType=Desserts&dishType=Sweets&imageSize=REGULAR&random=true&field=uri&field=label&field=image&field=ingredientLines"
    
    private init() {}
    
    func fetchRecipes() async throws -> [Recipe] {
        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        do {
            let decodedResponse = try JSONDecoder().decode(RecipeResponse.self, from: data)
            return decodedResponse.hits.map {$0.recipe}
        } catch {
            throw NetworkError.invalidData
        }
    }
    
    
//    static let apiKey = ""
    

    //    let baseUrl = ""
    //    let recipeURL = "https://api.edamam.com/api/recipes/v2?type=public&app_id=d1ed5062&app_key=e144b997943e3f6969fc0ea89fa1ede6&diet=low-carb&mealType=Teatime&dishType=Desserts&random=true&field=uri&field=label&field=image&field=ingredientLines"
// 1. Create a URL

    //    func getRecipe() async throws -> [Recipe] {
    //        guard let url = URL(string: recipeURL) else {
    //            throw DKError.invalidURL
    //        }
    // 2. Create a URLSession
    //        let (data, response) = try await URLSession.shared.data(from: url)
    
// 3. Give the session a task
// 4. Start the task -> .task on an object/view
    //        do {
    //            let decoder = JSONDecoder()
    //            return try decodedResponse = try decoder.decode(RecipeResponse.self, from: data)
    //            return decodedResponse.request
    //        } catch {
    //            throw DKError.invalidData
    //        }
    //    }
}


enum NetworkError: Error {
    case invalidURL
    case invalidData
    case invalidResponse
}
