func reverse(_ x: Int) -> Int {
    let minLimit = -2 << 30
    let maxLimit = 2 << 30 - 1
    if x < 0 && x < minLimit || x > 0 && x > maxLimit {
        return 0
    }
    var number = x
    var output = 0
    var remainder = 0
    while number != 0 {
        remainder = number % 10
        output = output * 10 + remainder
        number /= 10
    }
    output = output < minLimit || output > maxLimit ? 0 : output
    return output
}

reverse(1534236469)
reverse(-343)