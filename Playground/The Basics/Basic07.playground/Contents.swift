/*
Basic 07 
# Contral Flow
*/

for index in 1...5 {
    index * 5
}

for index in 1..<5 {
    index * 4
}

let base = 2
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
answer



let names = ["Anna", "Alex", "Brain", "Jack"]
for name in names {
    name
}



let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    animalName
    legCount
}

for character in "hello" {
    character
}



for var index = 0; index < 3; ++index {
    index
}



var index: Int
for index = 0; index < 3; ++index {
    index
}
index



let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    if ++diceRoll == 7 {
        diceRoll = 1
    }
    square += diceRoll
    if square < board.count {
        square += board[square]
    }
}
println("Game over!")


let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y || x == -y:
    println("xxx")
default:
    println("yyy")
}
