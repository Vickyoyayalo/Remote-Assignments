//   let x: Int = 10
//let y: Int = 20
//let average: Double = Double(x + y) / 2.0

//let remainder = 10 % 3

//var myFriends: Array<String> = [ ]
//var myFriends: [String] = [ ]
//var myFriends = Array<String>( )
//var myFriends= [String]( )

//var myFriends = [String]( )
//myFriends.append(contentsOf: ["Ian", "Bomi", "Kevin"])
//myFriends.append("Michael")
//if let index = myFriends.firstIndex(of: "Kevin") {
//    let kevin = myFriends.remove(at: index)
//    myFriends.insert(kevin, at: 0)
//}
//
//print(myFriends)
//for friend in myFriends {
//    print(friend)
//}
//
//let firstFriend = myFriends.first
//var myCountryNumber: [String: Int] = [:]
//var myCountryNumber = [String:Int]()
//
//myCountryNumber["US"] = 1
//myCountryNumber["GB"] = 44
//myCountryNumber["JP"] = 81
//myCountryNumber ["US"] = 1

//var myCountryNumber: [String: Int] = [:]

//myCountryNumber.removeValue(forKey: "US")
//
let lottoNumbers = [10, 9, 8, 7, 6, 5]
//
// for-in loop:
//for number in lottoNumbers[lottoNumbers.count-3..<lottoNumbers.count] {
//    print(number)
//}
//
//
//從數字最小到最大
//let sortedNumbers = lottoNumbers.sorted()
//for number in sortedNumbers {
//    print(number)
//}
//
//整除數字2
//for number in lottoNumbers {
//    if number % 2 == 0{
//        print(number)
//    }
//}
//
// while loop
// no sorting
//var index = 0
//while index < lottoNumbers.count {
//    print(lottoNumbers[index])
//    index += 1
//}


// have sorting
//let sortedNumbers = lottoNumbers.sorted()
//var index = 0
//while index < sortedNumbers.count {
//    print(sortedNumbers[index])
//    index += 1
//}

var index = 0
while index < lottoNumbers.count {
    let number = lottoNumbers[index]
    if number % 2 == 0 && number <= 10 && number >= 6 {
        print(number)
    }
    index += 1
}

//repeat-while loop

// no sorting
//var index = 0
//repeat {
//    print(lottoNumbers[index])
//    index += 1
//} while index < lottoNumbers.count
//

// have sorting
//let sortedNumbers = lottoNumbers.sorted()
//
//var index = 0
//repeat {
//    print(sortedNumbers[index])
//    index += 1
//} while index < sortedNumbers.count



var index = 0
repeat {
    let number = lottoNumbers[index]
    if number % 2 == 0 && number <= 10 && number >= 6 {
        print(number)
    }
    index += 1
} while index < lottoNumbers.count

//var isRaining = false
//if isRaining {
//    print("It's raining, I don't want to work today.")
//} else {
//    print("Although it's sunny, I still don't want to work today.")
//}
//
//var jobLevel = 2
//if jobLevel == 1 {
//    print("Member")
//} else if jobLevel == 2 {
//    print("Team Leader")
//} else if jobLevel == 3 {
//    print("Manager")
//} else if jobLevel == 4 {
//    print("Director")
//} else {
//    print("We don't have this job")
//}
//
//switch jobLevel {
//case 1:
//    print("Member")
//case 2:
//    print("Team Leader")
//case 3:
//    print("Manager")
//case 4:
//    print("Director")
//default:
//    print("We don't have this job")
//}
//
//func multiply(a: Int, b: Int = 10) {
//    print(a * b)
//}

//func greeting(person name: String) -> String {
//    return "Hello, \(name)"
//}

//var index = 0
//while index < lottoNumbers.count {
//    print(lottoNumbers[index])
//    index += 1
//}
//



