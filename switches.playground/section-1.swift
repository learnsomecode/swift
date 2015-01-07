// switches reference

// define an array with numbers from 1 - 13
let cards = 1...13

// check if card is a face card or naw
for card in cards {
    switch card {
    case 11...13:
        println("Face card")
    default:
        println(card)
    }
}