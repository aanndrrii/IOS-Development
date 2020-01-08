import Cocoa
import Foundation

func andProduct(a: Int, b: Int) -> Int {
    
    var result:UInt8 = UInt8(a)
    
    for i in a...b {
        let au = UInt8(result)
        let bu = UInt8(i)
        result = au & bu
    }
    
    return Int(result)

}

andProduct(a: 11, b: 15)
