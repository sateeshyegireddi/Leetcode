
/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

// Time Complexity  - O(nlogn)
// Space Complexity - O(1)

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    for i in 0..<numbers.count {
        let compliment = target - numbers[i]
        let index = binarySearch(numbers, target: compliment)
        if index >= 0 {
            return [i + 1, index + 1]
        }
    }
    return []
}

func binarySearch(_ numbers: [Int], target: Int) -> Int {
    var low = 0
    var high = numbers.count - 1
    
    while low <= high {
        var mid = low + ( high - low ) / 2
        if target == numbers[mid] {
            return mid
        } else if target > numbers[mid] {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return -1
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

// Time Complexity  - O(n)
// Space Complexity - O(1)

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var low = 0
    var high = numbers.count - 1
    while low < high {
        let sum = numbers[low] + numbers[high]
        if sum == target {
            return [low + 1, high + 1]
        }else if sum > target {
            high -= 1
        } else {
            low += 1
        }
    }
    return []
}
