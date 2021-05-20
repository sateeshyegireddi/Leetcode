
func maxSubArray(_ array: [Int]) -> Int {
    
    // If all the numbers are -ve, return max of -ve
    if let max = array.max(), max < 0 {
        return max
    }
    
    var maxSum = 0
    var sum = 0
    
    for num in array {
        sum += num
        if sum < 0 { sum = 0 }
        if sum > maxSum { maxSum = sum }
    }
    
    return maxSum
}

var numbers = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
var result = maxSubArray(numbers)
