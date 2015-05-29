/*
closures
*/

var numbers = [20, 19, 7, 12]

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

let evenNumbers = numbers.map({
    (number: Int) -> Int in
    if number == number / 2 * 2 {
        return number
    } else {
        return 0
    }
})

let mappedNumbers = numbers.map({
    number in
    3 * number
})


var strings = ["abcd", "efg", "hijk"]

let mappedStrings = strings.map({
    string in
    (string + "\n", string + "\t")
})
println(mappedStrings)

let sortedNubmers = sorted(numbers) {
    $0 > $1
}
let sortedNumbers = sorted(numbers, {
  $1 > $0
})
