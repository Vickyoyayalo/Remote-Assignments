import UIKit

//: ## iOS Remote Learning Assignment - Week 2

//: Part 1: Object-Oriented Swift

// MARK: -enum Gender
enum Gender {     //enum= enumerations
    case male
    case female
    case undefined
}
// MARK: -class
//:宣告 Animal 的變數，設定一屬性 gender 和一個方法 eat()。
class Animal {             //宣告類別
    var gender: Gender     //產生物件
    
    init(gender: Gender) {
        self.gender = gender
    }
//: 設定function 讓 呼叫.eat()方法時會印出I eat everything!
    func eat() {
        print("I eat everything!")
    }
}

let animal = Animal(gender: .female)
animal.eat()

// MARK: -inherits

//: 繼承方式為類別名稱加上 : 然後Swift 不允許多重繼承。
class Elephant: Animal {
    override func eat() {           //overwrite 覆寫
        print("I eat ants!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat animals!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}
//let elephant = Animal(gender: .undefined)
//let tiger = Animal(gender: .female)
//let horse = Animal(gender: .male)

//: Tiger、Elephant 和 Horse 都繼承自 Animal
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: tiger)
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

zoo.weeklyHot.eat()

// MARK: -instance and Initilizer
// An instance(實例) of a struct is an object（具體對象） created by using a pre-defined struct. If you want to create an object using your struct as its blueprint, you must first “initialize” the struct. To “initialize（初始化器） a struct is to create an actual object based on the struct (a blueprint) that you can then use.（初始化類別或結構的實例，它們設定實例的初始狀態。）
// MARK: - Struct and Class
//: A *struct* is a *value* type while a *class* is a *reference* type.
// • Struct 是值類型，每當你將它們賦值給一個新變量或常量時，會創建一個完整的拷貝。
// • Class 是引用類型，將它們賦值給一個新變量或常量時，都是指向同一個實例。

// MARK: -reference and value type
//https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84-swift-ios-app-%E9%96%8B%E7%99%BC%E5%95%8F%E9%A1%8C%E8%A7%A3%E7%AD%94%E9%9B%86/swift-%E7%9A%84-value-type-%E5%92%8C-reference-type-25f9ae9f54b6
// 當我們設定變數(常數)儲存的內容時，這兩種 type 將產生莫大的差別。
// • 值類型 (Value Types)：struct，enum 和 tuple，簡單說是將原本的資料複製產生新的資料。
// 將它作為參數傳遞給函數時，實際上是創建了一個該值的副本。這意味著對副本的修改「不會影響」原始實例。
// • 引用類型 (Reference Types)：class，function 和 closure，簡單說是共享同一份資料。
// 將它作為參數傳遞給函數時，實際上是傳遞了對該實例的引用。這意味著對引用的修改「將影響」到原始實例，因為它們指向同一個實例。

// MARK: -instance and type method
//實例方法 (Instance Method)：Instance methods are associated with values.
//實例方法是屬於某個類別、結構或枚舉的具體實例的方法。需要通過該類別、結構或枚舉的實例來調用這些方法。
//類型方法 (Type Method)：Type methods are associated with types.
//類型方法是屬於類別本身的方法，而不是它的某個具體實例。可以通過類別本身來調用這些方法。
// MARK: - self in instance and type method
//self in 實例方法 (Instance Method)：self 是實例本身的引用。可以在實例方法中使用 self 來引用當前實例的屬性或方法。
//class MyClass {
//    var value: Int = 0
//
//    func instanceMethod() {
//        self.value = 10 // 使用 self 引用當前實例
//        print("Instance value is \(self.value)")
//    }
//}

//let instance = MyClass()
//instance.instanceMethod()

//self in 類型方法 (Type Method):透過在 func 關鍵字前加上 static 關鍵字來表示為類型方法
//class MyClass {
//    static var typeProperty: Int = 0
//
//    static func typeMethod() {
//        self.typeProperty = 10       // 使用 self 引用當前類型
//        print("Type property is \(self.typeProperty)")
//    }
//}
//
//MyClass.typeMethod()


//: Part 2: Enumerations and Optionals in Swift
// MARK: -enum
//enum Gasoline: String {
//    case gas92 = "92"
//    case gas95 = "95"
//    case gas98 = "98"
//    case diesel = "Diesel"
//}

// MARK: -raw values
//enum Gasoline: String {
//    case gas92 = "92"
//    case gas95 = "95"
//    case gas98 = "98"
//    case diesel = "Diesel"
//    
//    var price: Double {
//        switch self {
//        case .gas92:
//            return 30.3
//        case .gas95:
//            return 32.5
//        case .gas98:
//            return 35.8
//        case .diesel:
//            return 28.9
//        }
//    }
//    
//    func getPrice() -> Double {
//        return self.price
//    }
//}
//
//let gasolineType = Gasoline.diesel
//print("The price of \(gasolineType.rawValue) is \(gasolineType.getPrice())")

// MARK: -associated value

enum Transport {
case car(seats: Int)                 //整數，表示座位數
case bicycle(type: String)           //字符，表示自行車類型
case airplane(airline: String, flightNumber: Int) // 航空公司、航班號
}

var myTransport = Transport.car(seats: 5)
myTransport = .bicycle(type: "Mountain")
myTransport = .airplane(airline: "OMG Airlines", flightNumber: 5978)

switch myTransport {
case .car(let seats):
    print("Car with \(seats) seats.")
case .bicycle(let type):
    print("Bicycle of type \(type).")
case .airplane(let airline, let flightNumber):
    print("Airplane with airline \(airline) and flight number \(flightNumber).")
}

// MARK: -var a: Int? = 10 的值可以是 nil(沒有值) 或 Int。
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}


let myPet = Pet(name: "Buddy")
let peopleWithPet = People()
peopleWithPet.pet = myPet
let peopleWithoutPet = People()

//guard let to unwrap the pet
// 使用 guard let 的函數
func printPetNameGuard(person: People) {
    guard let pet = person.pet else {
        print("This person has no pet.")
        return
    }
    print("This person's pet is named \(pet.name).")
}
//if let to unwrap the pet
func printPetNameIfLet(person: People) {
    if let pet = person.pet {
        print("This person's pet is named \(pet.name).")
    } else {
        print("This person has no pet.")
    }
}

let personWithPet = People()
peopleWithPet.pet = Pet(name: "Buddy")
printPetNameGuard(person: peopleWithPet)

let personWithoutPet = People()
printPetNameIfLet(person: personWithoutPet)

//: Part 3: Protocol in Swift
//MARK: -protocol
////https://www.appcoda.com.tw/swift-protocol/#google_vignette
protocol PoliceMan {
    func arrestCriminals()     //無參數的方法 arrestCriminals
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    var name: String
    var toolMan: ToolMan?
    
    func arrestCriminals() {
        print("\(name) is arresting criminals.")
    }
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("Engineer is fixing the computer.")
    }
}

// 創建一個名為 "Steven" 的 Person 實例
let engineer = Engineer()
var Steven = Person(name: "Steven", toolMan: engineer)
Steven.arrestCriminals()
Steven.toolMan?.fixComputer()

//: Part 4:  Error Handling in Swift

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

let game = GuessNumberGame()

// do-try-catch 語句來捕捉並處理 guess(number:) 方法中拋出的錯誤
do {
    try game.guess(number: 20) // 使用 20 來演示錯誤處理
} catch GuessNumberGameError.wrongNumber {    //遵循了 Error 協議
    print("Wrong number guessed!")     //catch
} catch {
    print("An unexpected error occurred: \(error).")
}


//: Part 5:  A Simple App
// in the file week2simpleAPP

