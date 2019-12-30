import UIKit

// Lesson 5
// This is a comment
var str:String = "Hello, playground"
print(str)
str = "some data"
print(str)

let con = "more data"

var b:Bool = false
b = true
print(b)

var i:Int = 32
i = 0
i = -10

var f:Double = 0.3493

// Lesson 6: Basic functions
func sayHello() {
    
    print("Hello!")
    
}
sayHello()

// Function with parameters
func sayHelloTo(_ name:String, _ age:Int) {
    
    print("Hello \(name), you're \(age) years old")
    
}
sayHelloTo("Tom", 20)

// Function with return value
func addFourTo(x:Int) -> Int {
    
    let sum = x + 4
    
    return sum
}
var result = addFourTo(x: 10)
print(result)

// Lesson 7: Basic Classes and Methods
class Spaceship {
    
    var fuelLevel = 100
    var name = ""
    
    func cruise() {
        // Code to initiate cruising
        print("Cruising is initiated for \(name)")
    }
    
    func thrust() {
        // Code to initiate rocket thrusters
        print("Rocket thrusters initiated for \(name)")
    }
    
}

var myShip:Spaceship = Spaceship()
myShip.name = "Tom"
print(myShip.name)
print(myShip.fuelLevel)
