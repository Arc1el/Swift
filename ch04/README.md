<h3>데이터 타입 안심</h3>

스위프트는 타입에 굉장히 민감하고 엄격함. 서로 다른타입끼리의 데이터 교환은 Type-Casting을 거쳐야함.

스위프트에서 값타입의 데이터교환은 새로운 인스턴스를 생성하여 할당하는것. 엄밀히 말하면 형변환은 아님.

스위프트는 컴파일시 타입을 확인하는데 이를 타입확인이라고함.

스위프트는 컴파일오류로 알려주므로 서로 다른타입의 값을 할당하는 실수를 줄일 수 있음.

<h3>타입 추론</h3>

변수나 상수를 선언할 때 특정 타입을 명시하지 않아도 컴파일러가 할당된 값을 기준으로 변수나 상수의 타입을 결정.

```swift
var name = "hyeonmin"

name = 100 // 타입추론에 의해 String변수로 지정되었기때문에 정수를 할당하려고 하면 오류가 발생됨.
```

<h3>타입 별칭</h3>

기본제공하는 데이터타입, 사용자가 임의로 만든 데이터타입등에 임의로 다른이름 (별칭)을 부여할 수 있음.

별칭을 부여한 다음 기본타입이름과 이후에 추가한 별칭을 모두 사용 가능.

```swift
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age : MyInt = 100
var year : YourInt = 2080

year = age //두 데이터 타입 모두 Int형이기때문에 같은타입 취급

let month : Int = 7 //기존 Int도 사용가능
let percentage : MyDouble = 99.9
```

<h3>튜플</h3>

타입의 이름이 따로 지정되어있지 않은, 프로그래머 마음대로 만드는 타입. 지정된 데이터의 묶음이라고 표현할 수 있음

튜플은 파이썬의 튜플과 유사하며 따로 이름이 없으므로 일정타입의 나열만으로도 튜플타입을 생성해 줄 수 있음.

튜플에 포함될 데이터의 갯수는 자유롭게 정할 수 있음.

```swift
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
```

<h3>컬렉션형</h3> 

스위프트는 튜플 외에도 많은 수의 데이터를 묶어서 저장하고 관리할 수 있는 컬렉션타입을 제공함. 배열, 딕셔너리, 세트 등이 있음.

<h2>배열</h2>

같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 컬렉션 타입. 각기 다른위치에 같은값이 들어갈 수 있음.

let키워드를 사용해 상수로 선언하면 변경할 수 없는 배열이 되고 var의 경우도 변수와 같이 선언됨.

실제로 배열을 사용할때에는 Array라는 키워드와 타입의 조합으로 사용함.

배열에 몇개의 요소가 존재하는지 알고싶으면 count프로퍼티를 확인하면 알 수 있음.

맨 처음과 맨 마지막 요소는 first와 프로퍼티를 통해서 가져올 수 잇음. 

index(of : )메서드를 사용하면 해당 요소의 인덱스를 알아낼 수 있음.

insert(of : )메서드를 사용하여 맨 뒤에 요소를 추가 할 수 있음.

at(of : )메서드를 사용하면 중간에 요소를 추가할수 있음.

요소를 삭제하려면 remove(of : )메서드를 사용하게 되는데, 요소가 삭제된 후 반환됨.

```swift
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
```

<h3>딕셔너리</h3>
요소들이 순서없이 키와 값의 쌍으로 구성되는 컬렉션타입. 키가 하나이거나 여러개일 수 있음.

```swift
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
```

<h3>세트</h3>

같은 타입의 데이터를 순서없이 하나의 묶음으로 지정하는 형태의 컬렉션타입. 세트내의 값은 모두 유일한, 중복된 값이 존재하지 않음.

세트는 보통 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용. 요소로 해시가능한 값이 들어와야함.

배열과 달리 줄여서 표현할 수 있는 축약형이 없음.

```swift
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
```

<h3>열거형</h3>

연관된 항목들을 묶어서 표현할 수 있는 타입. 배열이나 딕셔너리같은 타입과 다르게 추가/수정이 불가능. 다음과 같을때 주로 사용

1. 제한된 선택지를 주고싶을때

2. 정해진 값 외에는 입력받고 싶지 않을때

3. 예상된 입력값이 한정적일때 

<h3>기본열거형</h3>

기본열거형의 경우 enum이라는 키워드로 선언이 가능

```swift
enum School
{
    case primary
    case elementary
    case middle
    case high
    case college
    case university
    case graduate
}

enum School2nd
{
    case primary, elemantary, middle, high, college, university, graduate
}

var highestEducationLevel : School = School.university
var highestEducationLevel2nd : School = .university
//두개다 동일한 표현

highestEducationLevel = .graduate

//원시값의 지정과 사용
enum School3rd : String
{
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestEducationLevel3rd : School3rd = School3rd.university
print("저의 최종학력은 \(highestEducationLevel3rd.rawValue)졸업입니다.")

enum WeekDays : Character
{
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today : WeekDays = WeekDays.fri
print("today is \(today.rawValue)")

//연관값
enum MainDish
{
    case pasta(taste : String)
    case pizza(dough : String, topping : String)
    case chicken(withSauce : Bool)
    case rice
}

var dinner : MainDish = MainDish.pasta(taste: "크림")
dinner = .pizza(dough: "치즈크러스트", topping: "불고기")
dinner = .chicken(withSauce: true)
dinner = .rice

//여러 열거형
enum PastaTaste
{
    case cream, tomato
}
enum PizzaDough {
    case cheeseCrust, thin, original
}
enum PizzaTopping {
    case pepperoni, cheese, bacon
}
enum MainDish2nd {
    case pasta(taste : PastaTaste)
    case pizza(dough : PizzaDough, topping : PizzaTopping)
    case chicken(withSauce : Bool)
    case rice
}

var dinner2nd : MainDish2nd = MainDish2nd.pasta(taste : PastaTaste.tomato)
dinner2nd = MainDish2nd.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)
```
