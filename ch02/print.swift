import UIKit
import SwiftUI

struct BasicInformation
{
    let name: String
    var age: Int
}

var hyeonminInfo : BasicInformation = BasicInformation(name : "hyeonmin", age : 23)

class Person
{
    var height : Float = 0.0
    var weight : Float = 0.0
}
let hyeonmin : Person = Person()
hyeonmin.height = 179.8
hyeonmin.weight = 82.1

print(hyeonminInfo)
dump(hyeonminInfo)

print(hyeonmin)
dump(hyeonmin)

//문자열보간법
let name : String = "hyeonmin"
var score : Int = 80
print("My name is \(score)")
