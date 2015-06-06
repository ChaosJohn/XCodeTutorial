/*
Optional
*/

let possibleNumber = "123"
let convertNumber = possibleNumber.toInt()
let _possibleNumber = "a123"
let _convertNumber = _possibleNumber.toInt()

let originalString = "hello, world"
let result = originalString.toInt()


if (nil != convertNumber) {
    "\(convertNumber)"
    "\(convertNumber!)"
}

if var actualNumber = possibleNumber.toInt() {
    "\(actualNumber)"
}

var serverResponseCode: Int? = 404
serverResponseCode = nil

let possibleString: String? = "An optional string. "
println(possibleString)
let assumedString: String! = "hiahiahia"
println(assumedString)
//let _assumedString: String!
//println(_assumedString)

if let definiteString = assumedString {
    println(definiteString)
}

