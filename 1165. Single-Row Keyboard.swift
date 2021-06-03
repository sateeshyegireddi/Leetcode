/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

//Time Complexity - O(n)
//Space Complexity - O(n)

func calculateTime(keyboard: String, word: String) -> Int {
    var time = 0
    var fromIndex = 0
    let keyboardLetters = Array(keyboard)
    
    for letter in word {
        for (index, keyboardLetter) in keyboardLetters.enumerated() {
            if letter == keyboardLetter {
                time += abs(fromIndex - index)
                fromIndex = index
            }
        }
    }
    
    return time
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

//Time Complexity - O(n)
//Space Complexity - O(1)

func calculateTime(keyboard: String, word: String) -> Int {
    var time = 0
    var fromIndex = 0
    var letters = [String.Element: Int]()
    for (index, letter) in keyboard.enumerated() {
        letters[letter] = index
    }
    for letter in word {
        if let index = letters[letter] {
            time += abs(fromIndex - index)
            fromIndex = index
        }
    }
    
    return time
}
