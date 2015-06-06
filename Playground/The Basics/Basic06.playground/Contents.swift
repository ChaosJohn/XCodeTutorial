/*
Basic 06 
# Collection Types
##Dictionaries 
##Mutability of Collections
*/

var namesOfIntegers = [Int: String]()

namesOfIntegers[16] = "sixteen"
namesOfIntegers
namesOfIntegers = [: ]


var airports = ["TYO": "Tokyo", "DUB": "Dublin"]

let oldValue = airports.updateValue("Dublin Airport", forKey: "xxx")
airports["DUB"]
airports["XXX"]

let removeValue = airports.removeValueForKey("DUB")
airports

airports = ["TYO": "Tokyo", "DUB": "Dublin"]

for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    airportCode
}

for airportName in airports.values {
    airportName
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)
