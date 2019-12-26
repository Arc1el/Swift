var names : Array<String> = ["hyeonmin", "yagom", "chulsoo", "younghee"]
var sameNames : [String] = ["hyeonmin", "yagom", "chulsoo", "younghee"]
//두개의 배열은 선언과 정확히 동일한 표현임 아래의 [String]이 축약표현

var emptyArray : [Any] = [Any]()
var emptyArray2nd : [Any] = Array<Any>()
//이 두개 또한 동일한 표현

var emptyArray3rd : [Any] = [] //배열의 타입을 정확히 명시하는경우 []만으로도 빈배열 생성 가능

print(emptyArray.isEmpty)
print(names.count)

print(names[2])
names[2] = "jenny"
print(names[2])
print(names[4])

names[4] = "elsa"
names.append("elsa")
names.append(contentsOf : ["john", "max"])
names.insert("happy", at : 2)
names.insert(contentsOf : ["Jinhee", "minsoo"], at : 5)

print(names[4])
print(names.first)
