/*
Enumerations and Structures
*/

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queue, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queue:
            return "queue"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
ace.simpleDescription()
Rank.Two.rawValue
Rank.Jack.rawValue
Rank(rawValue: 1)?.simpleDescription()

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
//        switch self {
//        case .Spades:
//            return "spades"
//        case .Hearts:
//            return "hearts"
//        case .Diamonds:
//            return "diamonds"
//        case .Clubs:
//            return "clubs"
//        }
        var suit: String? = nil
//        var suit: String
        switch self {
        case .Spades:
            suit = "spades"
        case .Hearts:
            suit =  "hearts"
        case .Diamonds:
            suit = "diamonds"
        case .Clubs:
            suit = "clubs"
        }
        return "\(suit)(\(self.color())))"
    }
    func color() -> String {
        switch self {
        case .Spades:
            return "black"
        case .Clubs:
            return "black"
        case .Diamonds:
            return "red"
        case .Hearts:
            return "red"
        }
    }
}
let hearts = Suit.Hearts
hearts.simpleDescription()
Suit.Hearts.color()



struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
//    func createFullDeckOfCards() -> [Card] {
//        var cards: [Card]
//        for theSuit in Suit {
//            for theRank in Rank {
//                cards.append(Card(rank: theRank, suit: theSuit))
//            }
//        }
//        return cards
//    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
//let fullDeckOfCards = threeOfSpades.createFullDeckOfCards()
//println(fullDeckOfCards)
//var cards: [Card]
//for theSuit in Suit() {
//    for theRank in Rank {
//        cards.append(Card(rank: theRank, suit: theSuit))
//    }
//}

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}
//var serverResponses: [ServerResponse]
//serverResponses[0] = success
//println(serverResponses)
