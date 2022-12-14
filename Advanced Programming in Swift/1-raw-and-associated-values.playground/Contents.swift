enum Ingredient: String {
    case chicken = "Free Range Chicken"
    case lettuce = "Romaine Lettuce"
    case croutons = "Salted Croutons"
}

let ingredient = Ingredient.lettuce

switch ingredient {
case .chicken: print("Our meals tastes better with \(ingredient.rawValue) to raise the quality")
case .lettuce: print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
case .croutons: print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads")
}

enum RecipeInformation {
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk, gluten")

switch recipeInformation {
case .allergens(let information): print("The meal includes the following allergens: \(information)")
}
