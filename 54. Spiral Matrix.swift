
// Time Complexity  - O(m * n)
// Space Complexity - O(m + n)

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    guard matrix.count > 0 && matrix[0].count > 0 else { return [] }
    var top = 0
    var left = 0
    var bottom = matrix.count - 1
    var right = matrix[0].count - 1
    var output = [Int]()
    let size = matrix.count * matrix[0].count
    while left <= right && top <= bottom {
        for column in stride(from: left, through: right, by: 1) {
            output.append(matrix[top][column])
        }
        if output.count == size { break }
        top += 1
        for row in stride(from: top, through: bottom, by: 1) {
            output.append(matrix[row][right])
        }
        if output.count == size { break }
        right -= 1
        for column in stride(from: right, through: left, by: -1) {
            output.append(matrix[bottom][column])
        }
        bottom -= 1
        for row in stride(from: bottom, through: top, by: -1) {
            output.append(matrix[row][left])
        }
        left += 1
    }
    return output
}

let matrix = [[1,2,3],[4,5,6],[7,8,9]]
spiralOrder(matrix)
