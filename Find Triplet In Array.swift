
/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

// Time Complexity - O(n3)
// Space Complexity - O(1)

func findTriplet(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 2 else { return [] }
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count - 1 {
            for k in j + 1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if sum == target {
                    return [nums[i], nums[j], nums[k]]
                }
            }
        }
    }
    return []
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

// Time Complexity - O(n2)
// Space Complexity - O(n)

func findTriplet(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 2 else { return [] }
    let nums = nums.sorted()
    for i in 0..<nums.count - 2 {
        var set = Set<Int>()
        let sum = target - nums[i]
        for j in i + 1..<nums.count {
            let compliment = sum - nums[j]
            if set.contains(compliment) {
                return [nums[j], nums[i], compliment]
            }
            set.insert(nums[j])
        }
    }
    return []
}

/*************************************************************************/
/******************************  APPROACH 3 ******************************/
/*************************************************************************/

// Time Complexity - O(n2)
// Space Complexity - O(n)

func findTriplet(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 2 else { return [] }
    let nums = nums.sorted()
    for i in 0..<nums.count {
        var low = i + 1
        var high = nums.count - 1
        while low < high {
            let sum = nums[i] + nums[low] + nums[high]
            if sum == target {
                return [nums[high], nums[i], nums[low]]
            } else if sum > target {
                high -= 1
            } else {
                low += 1
            }
        }
    }
    return []
}
