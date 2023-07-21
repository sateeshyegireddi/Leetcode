protocol Stackable {
    associatedtype Element

    var isEmpty: Bool { get }
    var isFull: Bool { get }
    var peek: Element? { get }
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
}

struct Stack<T>: Stackable {
    typealias Element = T

    var array: [T?]
    var capacity: Int
    var top: Int
    
    init(size: Int) {
        self.array = Array<T?>.init(repeating: nil, count: size)
        self.capacity = size
        self.top = -1
    }

    var isFull: Bool {
        return top == capacity - 1
    }

    var isEmpty: Bool {
        return top == -1
    }

    var peek: T? {
        return array[top]
    }

    var size: Int {
        return top + 1
    }

    mutating func push(_ element: T) {
        if isFull {
            print("Stack is full!")
            return
        }
        top += 1
        array[top] = element
    }

    mutating func pop() -> T? {
        if isEmpty {
            print("Stack is empty!")
            return nil
        }
        let topElement = array[top]
        array[top] = nil
        top -= 1
        return topElement
    }

    func printStack() {
        if isEmpty {
            print("Stack is empty!")
            return
        }
        print(array, separator: ", ")
    }
}

// TESTING
var stack = Stack<String>(size: 5)
stack.push("a")
stack.push("b")
stack.push("c")
stack.push("d")
stack.push("e")
stack.push("f")
print(stack.size)
print(stack.peek ?? "")
stack.printStack()
print(stack.pop() ?? "")
stack.printStack()
//
