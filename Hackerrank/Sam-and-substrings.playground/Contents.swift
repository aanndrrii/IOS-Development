import UIKit

extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }

    func substring(begin:Int, end:Int) -> String {
        let range = begin...end
        let startIndex = index(from: range.lowerBound)
        let endIndex = index(from: range.upperBound)
        return substring(with: startIndex..<endIndex)
    }
}

func samAndSubstrings(number:Int) -> Int {
    var sum = 0
    
    let str = String(number)
    print(str)
    let length = str.count
    
    
    for i in 0..<length {
        for j in 1..<length {
            if (i+j) > length {
                continue
            }
            let s = str.substring(begin: i, end: (i+j))
            print(s)
            
            let n = Int.init(s)!
            sum+=n
        }
    }
    sum+=number
    print(sum)
    return sum
}

samAndSubstrings(number: 12345)
