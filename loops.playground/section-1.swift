// loops reference

// define an array for testing
let items = ["bread", "milk", "cheese", "cake"]

// for-in loop
for item in items {
    println(item)
}

// another example
for number in 1...10 {
    println("countdown: \(number)")
}

// or the classic approach to for
for var i = 0; i < items.count; i++ {
    println(items[i])
}

// while loop
var index = 0
while index < items.count {
    println(items[index])
    index++
}

// do-while loop
index = 0
do {
    println(items[index])
    index++
} while index < items.count