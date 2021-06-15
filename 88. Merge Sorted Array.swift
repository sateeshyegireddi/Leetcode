
// Time Complexity  - O(n)
// Space Complexity - O(1)

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var k = m + n - 1
    var i = m - 1
    var j = n - 1
    
    while k >= 0 && j >= 0 {
        if i >= 0 && nums1[i] > nums2[j] {
            nums1[k] = nums1[i]
            i -= 1
        } else {
            nums1[k] = nums2[j]
            j -= 1
        }
        k -= 1
    }
}

var numbers = [2, 3, 4, 0, 0, 0]
merge(&numbers, 3, [1, 2, 5], 3)
