
func isPalindrome(_ x: Int) -> Bool {
    let max = 2 << 30 - 1
    if x < 0 || x > max { return false }
    var number = x
    var output = 0
    while number > 0 {
        let remainder = number % 10
        output = output * 10 + remainder
        number /= 10
    }
    return x == output
}

isPalindrome(234565)

