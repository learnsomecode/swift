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


// define another function for testing
// name the parameters
func namedParameters(height h: Int, width w: Int) -> Int {
    return w + h
}

// and print it
println(namedParameters(height: 5, width: 10))

// or prefix it for both
func anotherFunction(#height: Int, #width: Int) -> Int {
    return height + width
}

// and another function call
println(anotherFunction(height: 5, width: 11))

// also if you want multiple return values
func yetAnother(name: String, age: Int) -> (String, Int) {
    return (name, age)
}

// and to get the values after assigning
let result = yetAnother("josh", 15)
result.0
result.1

// or if you want to assign each value to a variable using tuples
// holy shit
// if you don't want a variable just replace it with "__"
// you'd want to do this to skip over a variable that's returned
let (name, age) = yetAnother("josh", 15)

// return name and age, each assigned properly through the function
name
age


// optionals
func findApt(aptNumber: String) -> String? {
    let aptNumbers = ["1", "2", "3", "4"]
    for tempAptNummber in aptNumbers {
        if (tempAptNummber == aptNumber) {
            return aptNumber
        }
    }
    return nil
}

// do nothing for now idk
func sendWarningTo(#aptNumber: Int) {
    
}

// use optionals
/* if culprit successfully unwraps the optional with the parameter,
   convert it to an integer and use it as a parameter for sendWarningTo */
if let culprit = findApt("101")?.toInt() {
    sendWarningTo(aptNumber: culprit)
}