
/*************************************************************************/
/******************************  APPROACH 1 ******************************/
/*************************************************************************/

// Time Complexity  - O(m * n)
// Space Complexity - O(m * n)

func setZeroes(_ matrix: inout [[Int]]) {
    var rows = input.count
    var columns = input[0].count

    var zeroRows = Set<Int>()
    var zeroColumns = Set<Int>()

    for row in 0..<rows {
        for column in 0..<columns {
            if input[row][column] == 0 {
                zeroRows.insert(row)
                zeroColumns.insert(column)
            }
        }
    }

    for row in 0..<rows {
        for column in 0..<columns {
            if zeroRows.contains(row) || zeroColumns.contains(column) {
                input[row][column] = 0
            }
        }
    }
}

/*************************************************************************/
/******************************  APPROACH 2 ******************************/
/*************************************************************************/

// Time Complexity  - O(m * n)
// Space Complexity - O(1)

func setZeroes(_ matrix: inout [[Int]]) {
    let rows = matrix.count
    let columns = matrix[0].count
    var hasZerosInFirstRow = false
    var hasZerosInFirstColumn = false
    
    for column in 0..<columns {
        if matrix[0][column] == 0 {
            hasZerosInFirstRow = true
        }
    }
    
    for row in 0..<rows {
        if matrix[row][0] == 0 {
            hasZerosInFirstColumn = true
        }
    }
    
    for row in 0..<rows {
        for column in 0..<columns {
            if matrix[row][column] == 0 {
                matrix[row][0] = 0
                matrix[0][column] = 0
            }
        }
    }
    
    for row in 1..<rows {
        for column in 1..<columns {
            if matrix[0][column] == 0 || matrix[row][0] == 0 {
                matrix[row][column] = 0
            }
        }
    }
    
    if hasZerosInFirstRow {
        for column in 0..<columns {
            matrix[0][column] = 0
        }
    }
    
    if hasZerosInFirstColumn {
        for row in 0..<rows {
            matrix[row][0] = 0
        }
    }
}

var input = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
setZeroes(input)
