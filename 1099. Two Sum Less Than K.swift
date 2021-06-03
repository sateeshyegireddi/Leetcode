/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

//Time Complexity - O(n2)
//Space Complexity - O(1)

func twoSumLessThanK(_ nums: [Int], _ target: Int) -> Int {
    var maxSum = -1
    var sum = -1
    
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            sum = nums[i] + nums[j]
            if sum < target && sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

//Time Complexity - O(nlogn)
//Space Complexity - O(1)

func twoSumLessThanK(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var maxSum = -1
    var sum = -1
    
    let nums = nums.sorted()

    while low < high {
        sum = nums[low] + nums[high]
        if sum < target && sum > maxSum {
            maxSum = sum
        } else if sum >= target {
            high -= 1
        } else {
            low += 1
        }
    }
    
    return maxSum
}
