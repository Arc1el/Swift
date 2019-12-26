typealias StringintDictionary = [String : Int]
//var numberForName : Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2nd : [String : Int] = [String : Int]()
var numberForName3rd : StringintDictionary = StringintDictionary()
var numberForName4nd : [String : Int] = [:]

var numberForName : [String : Int] = ["hyeonmin" : 100, "chulsoo" : 30, "jenny" : 20]

print(numberForName.isEmpty)
print(numberForName.count)

print(numberForName["chulsoo"])
print(numberForName["minji"])

numberForName["chulsoo"] = 150
print(numberForName["chulsoo"])

numberForName["max"] = 999
print(numberForName["max"])

print(numberForName.removeValue(forKey: "hyeonmin"))
print(numberForName.removeValue(forKey: "hyeonmin"))

print(numberForName["hyeonmin", default : 0])
