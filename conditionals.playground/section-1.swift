// conditionals reference

// assign cards array to each number from 1 - 13 for example(s)
let cards = 1...13

// go through cards and check if they're face cards or naw
for card in cards {
    if card == 11 {
        println("Jack")
    } else if card == 12 {
        println("Queen")
    } else if card == 13 {
        println("King")
    } else {
        println(card)
    }
}