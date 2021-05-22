
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for i in 0..<nums.count {
        let compliment = target - nums[i]
        if let complimentIndex = dict[compliment] {
            return [complimentIndex, i]
        }
        dict[nums[i]] = i
    }
    return []
}
