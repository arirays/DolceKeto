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


extension Recipe {
    static let testRecipes: [Recipe] = [
        Recipe(name: "No bake peanut butter bar",
               image: "https://www.choczero.com/cdn/shop/articles/20220517123507-pbswirl_1000x1000_crop_center@2x.jpg?v=1652790941",
               description: "No bake recipe for keto peanut butter bars is easy, requires no baking, and has minimal clean up-- making this the perfect low carb dessert bar. This is a versatile recipe-- if you're not a fan of peanut butter, feel free to use any nut butter you prefer.",
               ingredients: "1 1/2 cup peanut butter or nut butter\n1 cup almond flour\n1/2 cup coconut flour\n1/4 cup powdered sweetener of choice\n1 tsp vanilla\npinch of salt\n4 tbsp coconut oil, divided\n1 bag sugar free chocolate chips\nsea salt flakes",
               directions: "1. In a large bowl, add peanut butter, almond flour, coconut flour, sweetener, vanilla and salt. Mix until combined. Add 2 tablespoons of melted coconut oil if the mixture seems dry.\n2. Press mixture into a parchment lined square baking dish. Freeze for 30 minutes to harden.\n 3.In a medium bowl, combine 2 tablespoons of coconut oil and keto friendly chocolate chips. Melt in the microwave at 30 second intervals, stirring in between, until melted or use the double boiler method.\n 4.Pour melted chocolate mixture on top of peanut butter layer. Sprinkle with flaky sea salt if desired. Freeze for 2 hours.\n 5.Cut into 12 equal squares and enjoy.",
               created: "8-30-2023",
               url: "https://www.choczero.com/blogs/recipes/keto-chocolate-peanut-butter-bars")
    ]
}
 
