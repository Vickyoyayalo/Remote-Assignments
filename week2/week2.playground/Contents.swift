import UIKit

var greeting = "Hello, playground"

//:--------------------------------------------
func printMeow(){
    print("Meow")
}

printMeow()

//:---------------------------------------------
func generateTwitterHandle(name: String, anotherWord word: String = "Meow") -> String {
    name.lowercased() + word
}

generateTwitterHandle(name: "Ozma")

func deutschify ( _word1: String, _word2: String = "katzen") -> String {
    let adjective=["Frolich", "Rund", "Salzig"].randomElement()!
    let ending=["schule", " keit", "maler", "maschine"].randomElement()!
    
    return adjective + _word1 + _word2 + ending
}

deutschify(_word1: " swifty")



