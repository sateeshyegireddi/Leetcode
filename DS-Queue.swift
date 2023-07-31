protocol Queueable {
    associatedtype Element

    var isEmpty: Bool { get }
    var isFull: Bool { get }
    var peek: Element? { get }
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
}

struct Queue<T>: Queueable {
    typealias Element = T

    var array: [T?]
    var capacity: Int
    var front: Int
    var rear: Int
    
    init(size: Int) {
        self.array = Array<T?>.init(repeating: nil, count: size)
        self.capacity = size
        self.front = -1
        self.rear = -1
    }

    var isFull: Bool {
        return front == 0 && rear == capacity - 1
    }

    var isEmpty: Bool {
        return front == -1 && rear == -1
    }

    var peek: T? {
        return array[rear]
    }

    var size: Int {
        return rear + 1
    }

    mutating func enqueue(_ element: T) {
        if isFull {
            print("Queue is full!")
            return
        } else {
            if front == -1 {
                front = 0
            }
            rear += 1
            array[rear] = element
            print("Enqueued element: \(element)\nQueue: \(array)")
        }
    }

    mutating func dequeue() -> T? {
        if isEmpty {
            print("Queue is empty!")
            return nil
        }
        let item = array[front]
        array[front] = nil
        if front >= rear {
            front = -1
            rear = -1
        } else {
            front += 1
        }
        print("Dequeued element: \(String(describing: item))\nQueue: \(array)")
        return item
    }

    func printQueue() {
        if isEmpty {
            print("Queue is empty!")
            return
        }
        print(array, separator: ", ")
    }
}
