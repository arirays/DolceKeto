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
    let datePublished: String
    let url: String
}


extension Recipe {
    static let testRecipes: [Recipe] = [
        Recipe(name: "Peanut butter bar",
               image: "https://www.choczero.com/cdn/shop/articles/20220517123507-pbswirl_1000x1000_crop_center@2x.jpg?v=1652790941",
               description: "No bake recipe for keto peanut butter bars is easy, requires no baking, and has minimal clean up-- making this the perfect low carb dessert bar. This is a versatile recipe-- if you're not a fan of peanut butter, feel free to use any nut butter you prefer.",
               ingredients: "1 1/2 cup peanut butter or nut butter\n1 cup almond flour\n1/2 cup coconut flour\n1/4 cup powdered sweetener of choice\n1 tsp vanilla\npinch of salt\n4 tbsp coconut oil, divided\n1 bag sugar free chocolate chips\nsea salt flakes",
               directions: "1.In a large bowl, add peanut butter, almond flour, coconut flour, sweetener, vanilla and salt. Mix until combined. Add 2 tablespoons of melted coconut oil if the mixture seems dry.\n2.Press mixture into a parchment lined square baking dish. Freeze for 30 minutes to harden.\n3.In a medium bowl, combine 2 tablespoons of coconut oil and keto friendly chocolate chips. Melt in the microwave at 30 second intervals, stirring in between, until melted or use the double boiler method.\n4.Pour melted chocolate mixture on top of peanut butter layer. Sprinkle with flaky sea salt if desired. Freeze for 2 hours.\n5.Cut into 12 equal squares and enjoy.",
               datePublished: "8-30-2023",
               url: "https://www.choczero.com/blogs/recipes/keto-chocolate-peanut-butter-bars"),
        Recipe(name: "Frozen Yogurt Bark",
               image: "https://www.myketokitchen.com/wp-content/uploads/2021/04/Keto-Strawberry-Yogurt-Bark.jpg",
               description: "This frozen yogurt bark is packed with blueberries, raspberries, strawberries and coconut. It is the perfect snack, as it is healthy and packed with protein. You will want to keep a batch of this in your freezer all the time! One of the best things about this frozen yogurt bark is that it’s interchangeable, depending on what fruit you have. You can also add some chocolate chips to it to get that chocolate fix!",
               ingredients: "2 cups Full Fat Greek Yogurt \n¼ cup Heavy Cream\n2tbsp Sugar free Maple Syrup\n2 teaspoons Vanilla Extract\n⅓ cup Raspberries or Blueberries\n3 Strawberries sliced\n⅓ cup Keto Granola Cereal or Unsweetened Shredded Coconut",
               directions: "1.In a mixing bowl, add the yogurt, cream, your choice of sweetener, and vanilla. Mix well.\n2.Fold through the diced strawberries.\n3.Pour the mixture onto a large flat baking pan, lined with parchment paper, and smooth into an even layer.\n4.Top with the strawberry slices and Keto Granola.\n5.Freeze for 3 hours, or until firm.\n6.Break into shards and enjoy!",
               datePublished: "08-31-2023",
               url: "https://www.myketokitchen.com/keto-recipes/keto-strawberry-yogurt-bark/"),
        Recipe(name: "Tiger Butter Fudge",
               image: "https://www.choczero.com/cdn/shop/articles/tigerbutter-00_1000x1000_crop_center@2x.jpg?v=1679412069",
               description: "This tiger butter is as delicious as it looks, with stripes of dark chocolate fudge running through peanut butter white chocolate fudge!",
               ingredients: "3/4 cup sugar free peanut butter chips \n1/2 cup sugar free white chocolate chips \n1 Oz. cocoa butter chopped \n1/4 cup powdered sweetener, divided \n1/4 cup heavy whipping cream \n1/4 cup sugar free dark chocolate chips \n1/2 tsp vanilla extract",
               directions: "1.Line an 8-inch square baking pan with parchment paper, allowing paper to come up the sides for easy removal. \n2.In a medium saucepan over medium heat, combine the keto peanut butter chips, keto white chocolate chips, and cocoa butter. Whisk until melted and smooth. Then whisk in 2 tbsp of the powdered sweetener until smooth.\n3.Pour the peanut butter mixture into the prepared baking pan and spread to the edges.\n4.In a small saucepan over medium heat, bring the whipping cream to a simmer. Remove from the heat and add the keto dark chocolate chips. Let sit a few minutes to melt. \n5.Whisk until smooth, then whisk in the remaining 2 tbsp of powdered sweetener and the vanilla extract. \n6.Drizzle the dark chocolate over the peanut butter mixture and swirl with a knife. Refrigerate until firm. \n7.Lift the tiger butter out of the pan by the overhanging parchment and use a sharp knife to cut into 16 bars. Store in the refrigerator.",
               datePublished: "08-31-2023",
               url: "https://www.choczero.com/blogs/recipes/homemade-tiger-butter-fudge")
    ]
}
 
