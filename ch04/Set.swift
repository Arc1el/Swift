var names : Set<String> = Set<String>()
var names2nd : Set<String> = []
//두개 다 동일한 빈 세트를 생성하는 코드

var names3rd : Set<String> = ["hyeonmin", "chulsoo", "hyeri", "solbin"]

var numbers = [100, 200, 300]
print(type(of : numbers))

print(names.isEmpty)
print(names.count)

names.insert("jenny")
print(names.count)

print(names.remove("chulsoo"))
print(names.remove("john"))

let englishClassStudents : Set<String> = ["john", "chulsoo", "hyeonmin"]
let koreanClassStudents : Set<String> = ["jenny", "hyeonmin", "chulsoo", "hana", "minsoo"]

let intersectSet : Set<String> = englishClassStudents.intersection(koreanClassStudents)
let symmetricDiffSet : Set<String> = englishClassStudents.symmetricDifference(koreanClassStudents)
let unionSet : Set<String> = englishClassStudents.union(koreanClassStudents)
let subtractSet : Set<String> = englishClassStudents.subtracting(koreanClassStudents)

print(unionSet.sorted())

let bird : Set<String> = ["pigeon", "chicken", "crow"]
let mammal : Set<String> = ["lion", "tiger", "bear"]
let animal : Set<String> = bird.union(mammal)

print(bird.isDisjoint(with: mammal))
print(bird.isSubset(of: animal))
print(animal.isSuperset(of: mammal))
print(animal.isSuperset(of: bird))
