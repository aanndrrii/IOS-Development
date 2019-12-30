import Cocoa
import Foundation

var str = "Hello, playground"


func pairs(k: Int, arr: [Int]) -> Int {
    var sum = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count{
            if i == j {
                continue
            }
            let a = arr[i]
            let b = arr[j]
            if a-b == k {
                sum+=1
            }
        }
    }
    return sum
}

var k = 2;
var arr = [1,5,3,4,2]
pairs(k: k, arr: arr)
