// structs reference

// create struct around contact
struct Contact {
    // obviously if these attributes are constants you can't reassign them
    var firstName: String
    
    // customly initialize this shit if you want idk
    init (firstName: String) {
        self.firstName = firstName
    }
    
    func returnName() -> String {
        return self.firstName
    }
}

// declare variable with my info
var person = Contact(firstName: "Josh")

// this should return my name oh look it does
person.firstName

// you can reassign this shit if you want as well
person.firstName = "bobby"

// and now it's reassigned :)
person.firstName

// call the returnName function (same as .firstName in this example)
person.returnName()