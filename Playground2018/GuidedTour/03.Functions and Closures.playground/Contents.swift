//: Playground - noun: a place where people can play

import Foundation

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
print(greet(person: "Bob", day: "Tuesday"))


func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet("John", on: "Friday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

var numbers2 = numbers.map({ (number: Int) -> Int in
    return 3 * number
})
print(numbers2)

var numbers3 = numbers.map({ (number: Int) -> Int in
    return number % 2 == 1 ? 0 : number
})
print(numbers3)

var numbers4 = numbers.map({ number in 2 * number })
print(numbers4)

var sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)

var sortedNumbers1 = numbers.sorted(by: { (before: Int, after: Int) -> Bool in
        return before > after
})
print(sortedNumbers1)

var sortedNumbers2 = numbers.sorted(by: { (before: Int, after: Int) in
    return before > after
})
print(sortedNumbers2)

var sortedNumbers3 = numbers.sorted(by: { (before, after) in
    return before > after
})
print(sortedNumbers3)

var sortedNumbers4 = numbers.sorted(by: { before, after in
    return before > after
})
print(sortedNumbers4)

var sortedNumbers5 = numbers.sorted(by: { before, after in
    before > after
})
print(sortedNumbers5)

var sortedNumbers6 = numbers.sorted(by: { before, after in before > after })
print(sortedNumbers6)
