func reverseVowels(_ s: String) -> String {
    var low = 0
    var high = s.count - 1
    var string = Array(s)
    while low < high {
        let left = string[low]
        let right = string[high]
        if !isVowel(left) {
            low += 1
        }
        if !isVowel(right) {
            high -= 1
        }
        if isVowel(left) && isVowel(right) {
            string.swapAt(low, high)
            low += 1
            high -= 1
        }
    }
    return String(string)
}

private func isVowel(_ s: String.Element) -> Bool {
    let vowels = "aeiou"
    return vowels.contains(Character(String(s).lowercased()))
}
