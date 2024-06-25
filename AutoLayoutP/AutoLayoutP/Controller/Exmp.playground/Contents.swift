import UIKit

//extension Array where Element == Int {
//
//    func sum() {
//
//        reduce(0, +)
//    }
//}
//
//let exam1 = [55,67,54,23]
//
//let exam2 = ["hadi","bakalim"]
//
//
//exam1.sum()
////exam2.sum()

var example: Int = 0 {

    willSet {
        print(example)
        print(newValue)
    }

    didSet {
        print("New \(example) \(oldValue)")
    }
}

example = 15
