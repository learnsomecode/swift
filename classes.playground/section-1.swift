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