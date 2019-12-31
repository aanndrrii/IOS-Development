import Cocoa
import Foundation

var str = "Hello, playground"

let numbers = "0123456789"
let lower_case = "abcdefghijklmnopqrstuvwxyz"
let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let special_characters = "!@#$%^&*()-+"

// Complete the minimumNumber function below.
func minimumNumber(n: Int, password: String) -> Int {
    // Return the minimum number of characters to make the password strong
    var sum = 0
    var numberExists:Bool = false
    var lowerCaseExists:Bool = false
    var upperCaseExists:Bool = false
    var specialCharacterExists:Bool = false
    
    for c in password {
        if numbers.contains(c){
            numberExists = true
            continue
        }
        if lower_case.contains(c){
            lowerCaseExists = true
            continue
        }
        if upper_case.contains(c){
            upperCaseExists = true
            continue
        }
        if special_characters.contains(c){
            specialCharacterExists = true
            continue
        }
    }
    
    if !numberExists {
        sum+=1
    }
    if !lowerCaseExists {
        sum+=1
    }
    if !upperCaseExists {
        sum+=1
    }
    if !specialCharacterExists {
        sum+=1
    }
    
    if n < 6 {
        if sum < 6-n{
            sum = (6-n)
        }
    }
    
    
    
    return sum
}

let password = "Ab1"
let n = password.count
minimumNumber(n: n, password: password)




