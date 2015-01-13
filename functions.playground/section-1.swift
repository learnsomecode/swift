// reference for functions

// define function for printing name with no parameters
func printName() {
    println("Josh")
}

// call the printName function
printName()

// define function for printing name with parameters
// syntax for this is variable_name: Type
func printNameWithParameters(name: String) {
    println(name)
}

// call the function
printNameWithParameters("Josh")


// define a function for a function
// defining a return value uses an arrow and then the type
func add(first: Float, second: Float) -> Float {
    return first + second
}

// call the function
add(5.2, 403.2) // o hell ya