

func binarySearch (sortedArray: [Int], key:Int) -> Bool {
    // if array is empty return false
    if sortedArray.count <= 0 {
        return false
    }
    
    let minIndex = 0
    let maxIndex = sortedArray.count - 1
    let midIndex = maxIndex / 2
    let midValue = sortedArray[midIndex]

    // key less than first value and greater than last value, return false
    if key < sortedArray[minIndex] || key > sortedArray[maxIndex] {
        return false
    }
    
    if key > midValue { // if key is greater than midValue, search right array
        let slicedArray:[Int] = Array(sortedArray[midIndex+1...maxIndex])
        return binarySearch(sortedArray: slicedArray, key: key)
    } else if key < midValue { // if key is less than midValue, search left array
        let slicedArray: [Int] = Array(sortedArray[minIndex...midIndex-1])
        return binarySearch(sortedArray: slicedArray, key: key)
    } else { // if key is equal to midValue, key found, return true
        return true
    }
}
// sorted array
let sortedArray1 = [1, 4, 7, 12, 16, 19]
let key = 4
let found : Bool = binarySearch(sortedArray: sortedArray1, key: key)
print("key \(key) found :  \(found
      
