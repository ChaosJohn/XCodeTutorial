// Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"

var myVariable = 42
myVariable = 50
let myConstant = 42



let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

println(implicitInteger)
println(implicitDouble)
println(explicitDouble)

let explicitFloat: Float = 70
println(explicitFloat)



let label = "The width is "
let width = 94
let widthLabel = label + String(width)
//let _widthLabel = label + width
//let _widthLabel = label + \(width)




let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"

let score: Float = 95.4
let myScore = "I got \(score) scores in the exam"



var shoppingList = [
    "catfish",
    "water",
    "tulips",
    "blue paint"
]
shoppingList[1] = "bottle of water"
println(shoppingList)
//shoppingList

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
println(occupations)



let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//let _emptyArray = []
//let _occupations = [:]



let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
println(teamScore)



var optionalString: String? = "Hello"
println(optionalString == nil)
var _optionalString: String?
println(_optionalString == nil)

var greeting = "Hello!"
var optionalName: String? = "John Appleased"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
var _optionalName: String?
if let name = _optionalName {
    greeting = "Hello, \(name)"
}
greeting



let vegetable = "read pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}



