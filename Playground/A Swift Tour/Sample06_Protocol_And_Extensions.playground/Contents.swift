/*
Protocols and Extensions
*/

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//enum SimpleEnum: ExampleProtocol {
//    var simpleDescription: String = "A simple enumeration"
//    mutating func adjust() {
//        simpleDescription += " (adjusted)"
//    }
//}

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription
var seven = 7
seven.simpleDescription
seven.adjust()

protocol AbsoluteValueProtocol {
    var absoluteValue: Double {get}
}
extension Double: AbsoluteValueProtocol {
    var absoluteValue: Double {
        if self > 0 {
            return self
        } else {
            return -self
        }
    }
}
var x: Double = -2
x.absoluteValue

let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription