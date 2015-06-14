// closures

func printString(input: String) {
    println(input)
}

let randomFunction = printString
randomFunction("input!!")

func printInt(number: Int) {
    println("input: \(number)")
}

let numberOfDogs = 3
printInt(numberOfDogs)

func displayString(printStringFunc: (String) -> Void) {
    printStringFunc("I'm a fuction inside another function")
}

displayString(printString)

let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
func isEvenNumber(i: Int) -> Bool {
    return i % 2 == 0
}

let ifEven = isEvenNumber
let evenNums = nums.filter(isEvenNumber)

func printerFunction() -> (Int) -> () {
    func printInteger(number: Int) {
        println("The integer passed in it: \(number)")
    }
    return printInteger
}

let printAndReturnIntegerFunc = printerFunction()
printAndReturnIntegerFunc(2)
printAndReturnIntegerFunc(3)

let runningTotalFunction = printerFunction()
runningTotalFunction(2)

