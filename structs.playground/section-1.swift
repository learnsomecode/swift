// structs reference

// create struct around contact
struct Contact {
    var firstName: String
}

// declare variable with my info
var person = Contact(firstName: "Josh")

// this should return my name oh look it does
person.firstName

// you can reassign this shit if you want as well
person.firstName = "bobby"

// and now it's reassigned :)
person.firstName