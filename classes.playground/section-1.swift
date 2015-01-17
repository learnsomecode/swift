// classes reference

// class syntax
// variables in the class are modifiable even if the instantiation is a constant
class Product {
    let title: String
    let price: Double = 0.0
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
    
    func discountedPrice(percentage: Double) -> Double {
        return price - (price * percentage / 100)
    }
}

// define constant holding instance of Product class with some variables
let quadcopter = Product(title: "Quadcopter", price: 500)

// get value of quadcopter 10% off
quadcopter.discountedPrice(10)

// create enum for Size
enum Size {
    case Small, Medium, Large
    init () {
        self = .Small
    }
}

// inheritence
class Clothing: Product {
    var size = Size()
    let designer: String
    
    init(title: String, price: Double, designer: String) {
        self.designer = designer
        // inherit from super initialized (must be called after local initializing attributes
        super.init(title: title, price: price)
    }
    
    convenience init(title: String) {
        self.init(title: title, price: 100, designer: "CK")
    }
    
    // use `override` keyword to replace function used in super class
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
}

// initialize instantiation and try out the functions that were carried down
var tshirt = Clothing(title: "Vintage", price: 50, designer: "Prada")

// use without adding parameters because default values are already assigned
tshirt.discountedPrice()
tshirt.size

// create a new class that inherits from Product
class Furniture: Product {
    var height: Double
    var width: Double
    
    // create a computed proprty that evaluates a value
    var heightTimesWidth: Double {
        get {
            // get the height times the width
            return height * width
        }
        set {
            // set the height and the width with the special keyword `newValue`
            height = newValue
            width = newValue
        }
    }
    
    // another init method wow nice
    init (title: String, price: Double, height: Double, width: Double, length: Double) {
        self.height = height
        self.width = width
        super.init(title: title, price: price)
    }
}


// initialize another variable with variables and stuff
let table = Furniture(title: "Table", price: 100, height: 10, width: 10, length: 10)

// and check the variables
table.heightTimesWidth
table.width
table.height

// creat another class that inherits from Product
class Electronic: Product {
    var batteries: Bool?
}

// another initialize
let toy = Electronic(title: "RC", price: 80)
toy.batteries = true
if let batteries = toy.batteries {
    if batteries {
        println("Batteries included")
    }
}