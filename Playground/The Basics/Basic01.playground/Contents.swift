/*
Basic 01
# Numeric Literials
# Numeric Type Conversion
# Integer Conversion
# Integer and Floating-Point Conversion
# Type Aliases 
# Booleans 
# Tuples
*/

UInt8.min
UInt8.max
UInt16.max
UInt16.max
UInt32.max
UInt64.max
UInt.max

Int8.min
Int8.max

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xc.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourFiveNine = 0.1415926
let pi = Double(three) + pointOneFourFiveNine

let integerPi = Int(pi)
Int(-3.14)



typealias AudioSample = UInt16
var maxAudioSample = AudioSample.max



let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    println("Mmm, tasty turinps!")
} else {
    println("Eww, turnips are horrible.")
}



let i = 1
if 1 == i {
    println(i)
}



let http404Error = (404, "Not Found")


let (statusCode, statusMessage) = http404Error
statusCode
statusMessage



let (justTheStatusCode, _) = http404Error
justTheStatusCode

let hhh = (1, 2, 3)
let (first, _, _) = hhh

http404Error.0
http404Error.1

let http202Status = (statusCode: 200, descriptor: "OK")
http202Status.0
http202Status.statusCode


