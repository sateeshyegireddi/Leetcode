/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

// Time Complexity - O(n3)
// Space Complexity - O(1)

// This is naive approach so it takes 3 loops *O(n3)* to find the sum is equal to zero.
// We are sorting the found numbers *O(nlogn)*
// Checking whether the triplet already exists in the output array or not to add it *O(n)*
func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 2 else { return [] }
    var output = [[Int]]()
    for i in 0..<nums.count - 2 {
        for j in i + 1..<nums.count - 1 {
            for k in j + 1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if sum == 0 {
                    let array = [nums[i], nums[j], nums[k]].sorted()
                    if !output.contains(array) {
                        output.append(array)
                    }
                }
            }
        }
    }
    return output
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

// Time Complexity - O(n2)
// Space Complexity - O(n)

//Removing duplicates play key role here in the approach.
func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 2 else { return [] }
    var output = [[Int]]()
    let nums = nums.sorted()
    for i in 0..<nums.count {
        //Remove duplicates
        if i > 0 && nums[i - 1] == nums[i] {
            continue
        }
        var low = i + 1
        var high = nums.count - 1
        while low < high {
            let sum = nums[i] + nums[low] + nums[high]
            if sum == 0 {
                output.append([nums[i], nums[low], nums[high]])
                //Remove duplicates
                while low < high && nums[low] == nums[low + 1] {
                    low += 1
                }
                low += 1
                while low < high && nums[high] == nums[high - 1] {
                    high -= 1
                }
                high -= 1
            } else if sum > 0 {
                high -= 1
            } else {
                low += 1
            }
        }
    }
    return output
}
