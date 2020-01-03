import Cocoa
import Foundation

func biggerIsGreater(w: String) -> String {
    var word:[Character] = Array(w)
    var start = -1
    for i in 0..<word.count-1 {
        if word[i] < word[i + 1]{
            start = i
        }
    }
    if start == -1 {
        print("no answer")
        return "no answer"
    }
    var end = -1
    for j in 0..<word.count{
        if word[start] < word[j]{
            end = j
        }
    }

    var t = word[start]
    word[start] = word[end]
    word[end] = t

    var a:[Character] = Array(word[(start + 1)..<(word.count)])
    a = a.sorted()

    for i in (start+1)..<word.count{
        word[i] = a[i-start-1]
    }

    return String(word)
}

print(biggerIsGreater(w: "fedcbabcd"))


