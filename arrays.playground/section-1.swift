// arrays references

// declare variable things to a bunch of things
// you an also specify which types you want in your variable with `name: [Type] =`
var things: [String] = [
    "dogs", "laptops", "outside", "USBs", "frank sinatra"
]

// return "laptops" from index (0, 1, 2, 3)
things[1]

// remove "frank sinatra" but assign him to a constant because returning
let legend = things.removeLast()

// add shit to the list
things += ["quarters"]

// return amount of items in array
things.count