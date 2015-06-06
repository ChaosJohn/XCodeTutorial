/*
Basic 05 
# Collection Types
##Arrays 
##Sets
*/

var someInts = [Int]()
someInts.count
count(someInts)

someInts.append(3)
someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)

var sixDouble = threeDoubles + anotherThreeDoubles



var shoppingList: [String] = ["Eggs", "Milk"]
var _shoppingList = ["Eggs", "Milk"]

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]



var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"
shoppingList

shoppingList.count
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.count
shoppingList

shoppingList.insert("Maple Syrup", atIndex: 0)
let mapleSyrup = shoppingList.removeAtIndex(0)
shoppingList
shoppingList.removeLast()



for (index, value) in enumerate(shoppingList) {
    "Item \(index + 1): \(value)"
}



var letters = Set<Character>()
letters.count
count(letters)
letters.insert("A")
letters = []

var favoriteGenres: Set<String> = [
    "Rock", "Classical", "Hip Hop"
]
var _favoriteGenres: Set = [
    "Rock", "Classical", "Hip hop"
]

favoriteGenres.count
count(favoriteGenres)
favoriteGenres.isEmpty
favoriteGenres.insert("Jazz")

if let removedGenres = favoriteGenres.remove("Rock") {
    removedGenres
}
favoriteGenres

favoriteGenres.contains("Jazz")
favoriteGenres.contains("Funk")

//for genre in favoriteGenres {
//    println("\(value)")
//}

for genre in sorted(favoriteGenres) {
    println("\(genre)")
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

sorted(oddDigits.union(evenDigits))
sorted(oddDigits.intersect(evenDigits))
sorted(oddDigits.subtract(singleDigitPrimeNumbers))
sorted(oddDigits.exclusiveOr(singleDigitPrimeNumbers))

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)



