func reverseString(_ s: inout [Character]) {
    var low = 0
    var high = s.count - 1
    while low < high {
        let temp = s[low]
        s[low] = s[high]
        s[high] = temp
        low += 1
        high -= 1
    }
}