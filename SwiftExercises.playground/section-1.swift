import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let fullSentence = "My favorite cheese is " + cheese
    return fullSentence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
var newArray = numberArray
newArray += [5]

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
var newDictionary = numberDictionary

newDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for n in 1...10 {
    println(n)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for n in 1..<11 {
    println(n)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]



func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinkArray = [String]()
    var favDrink = ""
    for name in characters {
        drinkArray.append(name["favorite drink"] ?? "")
    }
    return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func stringify(foods:Array<String>) -> String {
    var list = ""
    var numberOfFoods = foods.count
    if numberOfFoods > 0 {
        list += foods[0]
        
        for n in 1..<numberOfFoods {
            list += ";" + foods[n]
        }
    }
    return list
}

// WORK HERE - make your function and pass `strings` in
stringify(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
let sortedCereals = sorted(cerealArray, {(cereal1, cereal2) -> Bool in
    return cereal1 < cereal2
})

























