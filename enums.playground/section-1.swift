// enum reference

// define enum of all of the days in the week
enum Day {
    case Monday, Tuesday, Wednesday, Thursday, Friday,
         Saturday, Sunday
}

// create a function to test it out with
func weekdayOrWeekend(dayOfWeek: Day) -> String {
    switch dayOfWeek {
    case Day.Monday, Day.Tuesday, Day.Wednesday, Day.Thursday, Day.Friday:
        return "Weekday"
    case Day.Saturday, Day.Sunday:
        return "Weekend"
    default:
        return "what"
    }
}

// assign today
var today = Day.Wednesday

// if you want to reassign an enum you don't have to specify all of it
today = .Tuesday

// run the function with Day.Monday
weekdayOrWeekend(today)

// if you want to give values in enums raw values
// if values are sequential, you don't have to specify them after the first one
enum Things: Int {
    case thing = 1, anotherThing = 2
}

// get values from that
println(Things.thing.rawValue)

// or associated values
enum Status {
    case Success(String), Failure(String)
}

// pass a string
let status = Status.Failure("Network fucked up")

// try it out
switch status {
case .Success(let success):
    println(success)
case .Failure(let failure):
    println(failure)
default:
    println("what")
}

// let's try this again using a method this time
enum Days: Int {
    case Monday, Tuesday, Wednesday, Thursday,
    Friday, Saturday, Sunday
    
    // try out init
    init() {
        self = .Monday
    }
    
    // you can throw functions in enums and they become methods so that's cool
    // if you want to use its own data, use `self` keyword
    func daysTillWeekend() -> Int {
        return Days.Saturday.rawValue - self.rawValue
    }
}

// assign variable to a new day (default Monday because init method)
var anotherToday = Days()

// run function
anotherToday.daysTillWeekend()

// reassign variable to Friday
anotherToday = .Friday

// run the function again and it'll reevaluate
anotherToday.daysTillWeekend()