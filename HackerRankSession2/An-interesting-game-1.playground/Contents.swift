import Cocoa

var str = "Hello, playground"

func getIndexOfMaxElement(arr: [Int], lastAvailable: Int) -> Int {
    var max = 0
    for i in 0..<lastAvailable {
        if (arr[i] > max){
            max = arr[i]
        }
    }
    return arr.firstIndex(of: max)!
}

func gamingArray(arr: [Int]) -> String {
    // Write your code here
    let vinner1 = "BOB"
    let vinner2 = "ANDY"
    
    var numberOfTurns = 0
    var lastAvailable = arr.count
    
    while(true){
        let newLastAvailable = getIndexOfMaxElement(arr: arr, lastAvailable: lastAvailable)
        if (newLastAvailable == 0){
            numberOfTurns+=1
            break
        } else {
            numberOfTurns+=1
            lastAvailable = newLastAvailable
        }
    }
    
    if numberOfTurns % 2 == 0 {
        return vinner2
    } else {
        return vinner1
    }

}

let sample = [5,2,6,3,4]
getIndexOfMaxElement(arr: sample, lastAvailable: sample.count)
getIndexOfMaxElement(arr: sample, lastAvailable: 5)
getIndexOfMaxElement(arr: sample, lastAvailable: 2)

gamingArray(arr: sample)
gamingArray(arr: [3,1])
gamingArray(arr: [1,3,5,7,9])
gamingArray(arr: [7,4,6,5,9])





