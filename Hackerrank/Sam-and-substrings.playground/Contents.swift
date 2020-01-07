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

func substrings(n: String) -> Int {
    print(n)
    var sum = Double(n)!
    let length = n.count
    
    for i in 0..<length {
        for j in 1..<length {
            if (i+j) > length {
                continue
            }
            let s = n.substring(begin: i, end: (i+j))
            print(s)
            let num = Double.init(s)!
            sum+=num
        }
    }
    print(sum)
    return Int(sum.truncatingRemainder(dividingBy: 1000000007.0))
}

// works only for small numbers
print(substrings(n: "123456789"))
