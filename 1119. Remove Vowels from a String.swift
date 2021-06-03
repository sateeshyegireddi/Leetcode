func removeVowels(s: String) -> String {
    var input = Array(s)
    for (index, letter) in input.enumerated() {
        if isVowel(letter) {
            input.remove(at: index)
        }
    }
    return String(input)
}

private func isVowel(_ s: String.Element) -> Bool {
    let vowels = "aeiou"
    return vowels.contains(Character(String(s).lowercased()))
}