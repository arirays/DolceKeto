//
//  Recipe.swift
//  DolceKeto
//
//  Created by AS on 8/29/23.
//

import Foundation


 
struct Recipe: Codable, Identifiable {

    var id = UUID()

    let name: String
    let image: String
    let ingredients: String

    var isFavorite = false
}

extension Recipe {
    static let testRecipes: [Recipe] = [
        Recipe(name: "Peanut butter bar",
               image: "https://www.choczero.com/cdn/shop/articles/20220517123507-pbswirl_1000x1000_crop_center@2x.jpg?v=1652790941",
               ingredients: "1 1/2 cup peanut butter or nut butter\n1 cup almond flour\n1/2 cup coconut flour\n1/4 cup powdered sweetener of choice\n1 tsp vanilla\npinch of salt\n4 tbsp coconut oil, divided\n1 bag sugar free chocolate chips\nsea salt flakes"),
        Recipe(name: "Frozen Yogurt Bark",
               image: "https://www.myketokitchen.com/wp-content/uploads/2021/04/Keto-Strawberry-Yogurt-Bark.jpg",
               ingredients: "2 cups Full Fat Greek Yogurt \n¼ cup Heavy Cream\n2tbsp Sugar free Maple Syrup\n2 teaspoons Vanilla Extract\n⅓ cup Raspberries or Blueberries\n3 Strawberries sliced\n⅓ cup Keto Granola Cereal or Unsweetened Shredded Coconut"),
        Recipe(name: "Blueberry Lemon Cheesecake bars ",
               image: "https://i0.wp.com/thebestketorecipes.com/wp-content/uploads/2020/02/keto-blueberry-lemon-cheesecake-bars-2-1.jpg?w=800&ssl=1",
               ingredients: "Almond Flour Crust: \n8 tablespoons butter \n1 1/4 cup almond flour \n2 tablespoons swerve sweetener \n\nLow Carb Blueberry Sauce: \n1 1/2 cup blueberries \n1/4 cup water \n1/3 cup of confectioners swerve sweetener \n\nLemon Cheesecake Layer: \n1 (8 ounce) block cream cheese \n1 egg yolk \n1/3 cup confectioners swerve \n1 tablespoon lemon juice \n1 teaspoon lemon zest, tightly packed \n1 teaspoon vanilla extract \n\nCoconut Crumble Topping: \n2 tablespoons butter \n1/4 cup almond flour \n1/4 cup unsweetened coconut flakes \n1 tablespoons swerve sweetener"),
        Recipe(name: "Cookie Dough Fat Bombs",
               image: "https://hips.hearstapps.com/hmg-prod/images/190412-chocolate-chip-keto-fat-bombs-vertical-3-1556199792.png?crop=1.00xw:0.667xh;0,0.201xh&resize=980:*",
               ingredients: "1/2 c. (1 stick) butter, softened \n1/3 c. Keto friendly confectioners sugar (such as Swerve) \n1/2 tsp. pure vanilla extract \n1/2 tsp. kosher salt \n2 c. almond flour \n2/3 c. Keto friendly dark chocolate chips (such as Lily's)"),
        
        Recipe(name: "Tiger Butter Fudge",
               image: "https://www.choczero.com/cdn/shop/articles/tigerbutter-00_1000x1000_crop_center@2x.jpg?v=1679412069",
               ingredients: "3/4 cup sugar free peanut butter chips \n1/2 cup sugar free white chocolate chips \n1 Oz. cocoa butter chopped \n1/4 cup powdered sweetener, divided \n1/4 cup heavy whipping cream \n1/4 cup sugar free dark chocolate chips \n1/2 tsp vanilla extract")
    ]
}

