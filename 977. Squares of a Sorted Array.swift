func sortedSquares(_ nums: [Int]) -> [Int] {
    var output = Array<Int>(repeating: 0, count: nums.count)
    var low = 0
    var high = nums.count - 1
    var point = high

    while low <= high {
        if abs(nums[low]) < abs(nums[high]) {
            output[point] = nums[high] * nums[high]
            high -= 1
        } else {
            output[point] = nums[low] * nums[low]
            low += 1
        }
        point -= 1
    }
    return output
}

var nums = [-4,-1,0,3,10]
sortedSquares(nums)