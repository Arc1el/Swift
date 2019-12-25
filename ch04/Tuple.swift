var person : (String, Int, Double) = ("hyeonmin", 100, 178.9)

print("이름 : \(person.0), 나이 : \(person.1), 신장 : \(person.2)")

person.1 = 99
person.2 = 180

print("이름 : \(person.0), 나이 : \(person.1), 신장 : \(person.2)")

var personIndex : (name : String, age : Int, height : Double) = ("hyeonmin", 100, 178.9)

personIndex.age = 99
personIndex.height = 179

print("이름 : \(personIndex.0), 나이 : \(personIndex.1), 신장 : \(personIndex.2)")

typealias PersonTuple = (name : String, age : Int, height : Double)

let hyeonmin : PersonTuple = ("hyeonmin", 100, 179)
let eric : PersonTuple = ("eric", 150, 183.9)

print("이름 : \(hyeonmin.name), 나이 : \(hyeonmin.age), 신장 : \(hyeonmin.height)")
print("이름 : \(eric.name), 나이 : \(eric.age), 신장 : \(eric.height)")
