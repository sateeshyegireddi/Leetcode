// Time Complexity - O(n)
// Space Complexity - O(n)

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var stack = [Character]()
    for letter in s {
        if letter == "{" {
            stack.append("}")
        } else if letter == "(" {
            stack.append(")")
        } else if letter == "[" {
            stack.append("]")
        } else if stack.isEmpty || stack.removeLast() != letter {
            return false
        }
    }
    return stack.isEmpty
}
