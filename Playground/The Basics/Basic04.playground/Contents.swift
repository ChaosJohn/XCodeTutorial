/*
Basic 04
# Basic Operators 
# Strings and Characters 
*/

let (x, y) = (1, 2)
x
y

var a: Int? = 1
var b = 2
a != nil ? a! : b

for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}


for index in 1..<5 {
    println("\(index) times 5 is \(index * 5)")
}


let names = ["Anna", "Alex", "Brain", "Jack"]
let _count = names.count
for i in 0..<_count {
    println("Person \(i + 1) is called \(names[i])")
}

var emptyString = ""
var anotherEmptyString = String()


if emptyString.isEmpty {
    println("empty")
}

var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!🐶" {
    println(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

//let exclamationMark: Character = "!"
welcome.append(exclamationMark)
//welcome.append() 

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"


var word = "cafe"
count(word)
word += "\u{301}"
count(word)


let greeting = "Guten Tag"
greeting.startIndex
greeting.endIndex
greeting[greeting.startIndex]
//greeting.endIndex.getMirror().value
//greeting[greeting.endIndex.successor() - 1]
greeting[greeting.startIndex.successor()]
greeting[greeting.endIndex.predecessor()]
advance(greeting.startIndex, 7)
advance(greeting.endIndex, 0)
count(greeting)
advance(greeting.endIndex, -1)
greeting[advance(greeting.endIndex, -1)]

for index in indices(greeting) {
    greeting[index]
}

welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)
welcome.splice(" there", atIndex: welcome.endIndex.predecessor())
welcome.removeAtIndex(welcome.endIndex.predecessor())
welcome

let range = advance(welcome.endIndex, -6)..<welcome.endIndex
welcome.removeRange(range)

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    "same"
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
latinCapitalLetterA == cyrillicCapitalLetterA

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++act1SceneCount
    }
}
act1SceneCount

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
mansionCount
cellCount

let dogString = "Dog!!🐶"
count(dogString)
count(dogString.utf8)
count(dogString.utf16)
count("🐶")
count("🐶".utf8)
count("🐶".utf16)
for codeUnit in dogString.utf8 {
    codeUnit
}
for codeUnit in dogString.utf16 {
    codeUnit
}
for scalar in dogString.unicodeScalars {
    scalar.value
}