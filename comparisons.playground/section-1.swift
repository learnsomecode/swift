// comparison reference

// quick comparison examples
1 == 1 // true
2 > 1  // true
2 >= 2 // true
2 <= 2 // true
3 != 1 // true

// assign distance variable for example
var distance = 1

// if numbers are more  or less or equal do things, etc
if distance < 5 {
    println("\(distance) is near")
} else if distance >= 5 {
    println("\(distance) miles is close")
} else {
    println("\(distance) miles so far")
}

// using && (AND)
if true && true {
    println("too true lmao")
}

// using || (OR)
if true || true {
    println("too true lmao")
}

// if not true, print false
var thing = true
if !thing {
    println("false") // this will be printed
}