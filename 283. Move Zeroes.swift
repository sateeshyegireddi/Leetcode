
/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

func moveZerosIndexBreak(_ array: inout [Int]) {
    var j = 0
    for i in 0..<array.count {
        if array[i - j] == 0 {
            array.append(array.remove(at: i - j))
            print(array)
            j += 1
        }
    }
}

// Time Complexity -- O(n2)
// Space Complexity -- O(1)

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

func moveZerosFilter(_ array: inout [Int]) {
    var nonZeros = array.filter { $0 != 0 }
    for _ in 0..<array.count - nonZeros.count {
        nonZeros.append(0)
    }
    array = nonZeros
}

// Time Complexity -- O(n)
// Space Complexity -- O(n)

/*************************************************************************/
/******************************  APPROACH 3 ******************************/
/*************************************************************************/

func moveZerosNonZeroIndexes(_ array: inout [Int]) {
    var nonZeroIndex = 0
    for num in array where num != 0 {
        array[nonZeroIndex] = num
        nonZeroIndex += 1
    }
    for i in nonZeroIndex..<array.count {
        array[i] = 0
    }
}

// Time Complexity -- O(n)
// Space Complexity -- O(1)
