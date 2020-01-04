import Cocoa
import Foundation

// Complete the flippingMatrix function below.
func flippingMatrix(matrix: [[Int]], n:Int) -> Int {
    //var n = matrix.count/2
    var r1:Int = 0
    var r2:Int = 0
    var c1:Int = 0
    var c2:Int = 0
    var sum:Int = 0
        
        for i in 0..<n {
            for j in 0..<n{
                r1 = i
                r2 = 2*n-i-1
                c1 = j
                c2 = 2*n-j-1
                sum+=max(max(matrix[r1][c1], matrix[r1][c2]), max(matrix[r2][c1], matrix[r2][c2]))
            }
        }
    return sum
}

var matrix = [[107, 54 , 128, 15],
              [12, 75, 110, 138],
              [100, 96, 34, 85],
              [75, 15, 28, 112]]
var n = 2

flippingMatrix(matrix: matrix, n: n)

