//
//  Recipe.swift
//  DolceKeto
//
//  Created by AS on 8/29/23.
//

import Foundation

struct Recipe: Decodable, Identifiable {
    
    var id = UUID()
    
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let datePublished: String
    let url: String
    
//    var isFavorite = false
}



extension Recipe {
    static let testRecipes: [Recipe] = [
        Recipe(name: "Peanut butter bar",
               image: "https://www.choczero.com/cdn/shop/articles/20220517123507-pbswirl_1000x1000_crop_center@2x.jpg?v=1652790941",
               description: "No bake recipe for keto peanut butter bars is easy, requires no baking, and has minimal clean up making this the perfect low carb dessert bar. This is a versatile recipe if you're not a fan of peanut butter, feel free to use any nut butter you prefer.",
               ingredients: "1 1/2 cup peanut butter or nut butter\n1 cup almond flour\n1/2 cup coconut flour\n1/4 cup powdered sweetener of choice\n1 tsp vanilla\npinch of salt\n4 tbsp coconut oil, divided\n1 bag sugar free chocolate chips\nsea salt flakes",
               directions: "1. In a large bowl, add peanut butter, almond flour, coconut flour, sweetener, vanilla and salt. Mix until combined. Add 2 tablespoons of melted coconut oil if the mixture seems dry.\n2. Press mixture into a parchment lined square baking dish. Freeze for 30 minutes to harden.\n3. In a medium bowl, combine 2 tablespoons of coconut oil and keto friendly chocolate chips. Melt in the microwave at 30 second intervals, stirring in between, until melted or use the double boiler method.\n4. Pour melted chocolate mixture on top of peanut butter layer. Sprinkle with flaky sea salt if desired. Freeze for 2 hours.\n5. Cut into 12 equal squares and enjoy.",
               datePublished: "8-30-2023",
               url: "https://www.choczero.com/blogs/recipes/keto-chocolate-peanut-butter-bars"),
        Recipe(name: "Frozen Yogurt Bark",
               image: "https://www.myketokitchen.com/wp-content/uploads/2021/04/Keto-Strawberry-Yogurt-Bark.jpg",
               description: "This frozen yogurt bark is packed with blueberries, raspberries, strawberries and coconut. It is the perfect snack, as it is healthy and packed with protein. You will want to keep a batch of this in your freezer all the time! One of the best things about this frozen yogurt bark is that it’s interchangeable, depending on what fruit you have. You can also add some chocolate chips to it to get that chocolate fix!",
               ingredients: "2 cups Full Fat Greek Yogurt \n¼ cup Heavy Cream\n2tbsp Sugar free Maple Syrup\n2 teaspoons Vanilla Extract\n⅓ cup Raspberries or Blueberries\n3 Strawberries sliced\n⅓ cup Keto Granola Cereal or Unsweetened Shredded Coconut",
               directions: "1. In a mixing bowl, add the yogurt, cream, your choice of sweetener, and vanilla. Mix well.\n2. Fold through the diced strawberries.\n3. Pour the mixture onto a large flat baking pan, lined with parchment paper, and smooth into an even layer.\n4. Top with the strawberry slices and Keto Granola.\n5. Freeze for 3 hours, or until firm.\n6. Break into shards and enjoy!",
               datePublished: "08-31-2023",
               url: "https://www.myketokitchen.com/keto-recipes/keto-strawberry-yogurt-bark/"),
        Recipe(name: "Blueberry Lemon Cheesecake bars ",
               image: "https://i0.wp.com/thebestketorecipes.com/wp-content/uploads/2020/02/keto-blueberry-lemon-cheesecake-bars-2-1.jpg?w=800&ssl=1",
               description: "These keto blueberry lemon cheesecake bars are one of my favorite ways to make cheesecake. Sweet blueberries and tart lemons are a perfect match. They go so well with the richness of the cream cheese. But the recipe doesn’t stop there. It also has a coconut crumble topping!",
               ingredients: "Almond Flour Crust: \n8 tablespoons butter \n1 1/4 cup almond flour \n2 tablespoons swerve sweetener \n\nLow Carb Blueberry Sauce: \n1 1/2 cup blueberries \n1/4 cup water \n1/3 cup of confectioners swerve sweetener \n\nLemon Cheesecake Layer: \n1 (8 ounce) block cream cheese \n1 egg yolk \n1/3 cup confectioners swerve \n1 tablespoon lemon juice \n1 teaspoon lemon zest, tightly packed \n1 teaspoon vanilla extract \n\nCoconut Crumble Topping: \n2 tablespoons butter \n1/4 cup almond flour \n1/4 cup unsweetened coconut flakes \n1 tablespoons swerve sweetener",
               directions: "For the Blueberry Sauce: \n1. Add the blueberries, Swerve confectioners sweetener, and water to a saucepan over medium heat.\n2. Simmer the mixture until it becomes thick, approximately 10-15 minutes. Set aside. \n\nFor the Crust: \n1. Preheat the oven to 350F.\n2. Line an 8x8-inch pan with aluminum foil or parchment paper.\n3. Combine the melted butter, almond flour, and Swerve sweetener in a small bowl.\n4. Press the crust into the foil lined pan.\n5. Pre-bake the crust for 7 minutes. It should not be firm, just slightly beginning to brown around the edges.\n6. Remove the crust and allow it to cool. DO NOT add the cheesecake layer while it is hot. \n\nFor the Cheesecake Filling: \n1. Using an electric mixer or small blender, mix the cream cheese, egg yolk, Swerve confectioners sweetener, lemon juice, lemon zest, and vanilla extract until smooth.\n2. Spread the cheesecake layer evenly over the crust.\n3. Spread the prepared low carb blueberry sauce over the cheesecake mixture. \n\n4. For the Coconut Crumble Topping: \nCombine the butter, almond flour, unsweetened coconut flakes, and Swerve sweetener in a small blender or food processor. Pulse until it resembles a crumb like mixture.\n5. Sprinkle the crumble over the blueberry layer.\n6. Bake 18-20 minutes until the top is lightly browned.\n7. Allow bars to cool completely before slicing.",
               datePublished: "06-22-2022",
               url: "https://thebestketorecipes.com/keto-blueberry-lemon-cheesecake-bars/"),
        Recipe(name: "Cookie Dough Fat Bombs",
               image: "https://hips.hearstapps.com/hmg-prod/images/190412-chocolate-chip-keto-fat-bombs-vertical-3-1556199792.png?crop=1.00xw:0.667xh;0,0.201xh&resize=980:*",
               description: "Fat Bombs alone make us want to go on the Keto diet, but we'll take any excuse to eat cookie dough. These are perfect to keep stored in the freezer for whenever the craving hits! ",
               ingredients: "1/2 c. (1 stick) butter, softened \n1/3 c. Keto friendly confectioners sugar (such as Swerve) \n1/2 tsp. pure vanilla extract \n1/2 tsp. kosher salt \n2 c. almond flour \n2/3 c. Keto friendly dark chocolate chips (such as Lily's)",
               directions: "1. In a large bowl using a hand mixer, beat butter until light and fluffy. Add sugar, vanilla and salt and beat until combined. \n2. Slowly beat in almond flour until no dry spots remain, then fold in chocolate chips. Cover bowl with plastic wrap and place in refrigerator to firm slightly, 15 to 20 minutes. \n3. Using a small cookie scoop, scoop dough into small balls. Store in the refrigerator if planning to eat within the week, or in the freezer for up to 1 month.",
               datePublished: "3-7-2023",
               url: "https://www.delish.com/cooking/recipe-ideas/a19756323/cookie-dough-keto-fat-bombs-recipe/"),
        
        
        Recipe(name: "Tiger Butter Fudge",
               image: "https://www.choczero.com/cdn/shop/articles/tigerbutter-00_1000x1000_crop_center@2x.jpg?v=1679412069",
               description: "This tiger butter is as delicious as it looks, with stripes of dark chocolate fudge running through peanut butter white chocolate fudge!",
               ingredients: "3/4 cup sugar free peanut butter chips \n1/2 cup sugar free white chocolate chips \n1 Oz. cocoa butter chopped \n1/4 cup powdered sweetener, divided \n1/4 cup heavy whipping cream \n1/4 cup sugar free dark chocolate chips \n1/2 tsp vanilla extract",
               directions: "1. Line an 8-inch square baking pan with parchment paper, allowing paper to come up the sides for easy removal. \n2. In a medium saucepan over medium heat, combine the keto peanut butter chips, keto white chocolate chips, and cocoa butter. Whisk until melted and smooth. Then whisk in 2 tbsp of the powdered sweetener until smooth.\n3. Pour the peanut butter mixture into the prepared baking pan and spread to the edges.\n4. In a small saucepan over medium heat, bring the whipping cream to a simmer. Remove from the heat and add the keto dark chocolate chips. Let sit a few minutes to melt. \n5. Whisk until smooth, then whisk in the remaining 2 tbsp of powdered sweetener and the vanilla extract. \n6. Drizzle the dark chocolate over the peanut butter mixture and swirl with a knife. Refrigerate until firm. \n7. Lift the tiger butter out of the pan by the overhanging parchment and use a sharp knife to cut into 16 bars. Store in the refrigerator.",
               datePublished: "08-31-2023",
               url: "https://www.choczero.com/blogs/recipes/homemade-tiger-butter-fudge")
    ]
}
 
