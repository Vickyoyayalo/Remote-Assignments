import UIKit
//: ## iOS Remote Learning Assignment - Week 3

//: Part 1
// MARK: -Closure
//Closure(閉包)就像是一個沒有名稱的函數，也被稱做[匿名函數]。像是個方法，可被宣告成 property 或 parameter。
//Closure is a self-contained block of code that can be assigned to a variable or passed as an argument to a function.

// 定義 closure
let greetingClosure = { (name: String) -> String in
    return "Hello, \(name)!"
}

// Execute a closure
let result = greetingClosure("Vicky")
print(result)  // Output: "Hello, Vicky!"

// MARK: -Ｄeclare a closure whose input type is Int, output type is Bool.
// 定義 closure Int -> Bool
let isOddClosure: (Int) -> Bool = { number in
    return number % 2 != 0
}

print(isOddClosure(3))  // Output: true
print(isOddClosure(4))  // Output: false

// MARK: -Asterisk
func printTriangle(layers: Int) {
    for i in 1...layers {  // 從1迴圈到layers（包括layers）
        print(String(repeating: "*", count: i))  // 輸出i個星號的字串
    }
}

printTriangle(layers: 5)

//: Part 2 in the project file week3app
