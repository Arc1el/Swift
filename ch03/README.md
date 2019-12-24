<h3>Int와 UInt</h3>

정수타입. Int는 +, -부호를 포함한 정수를 뜻하며 이중 -부호를 포함하지 않는 0을 포함한 양의정수는 UInt로 표현. 첫글자가 대문자인 카멜케이스 사용

최댓값과 최솟값은 각각 max, min프로퍼티로 알아 볼 수 있음. 각각 8비트, 16비트, 32비트, 64비트의 형태가 있음 ex)Int8, UInt32...

<h3>표현</h3>

```swift
var integer : Int = -100
let unsignedInteger : UInt = 50 //UInt타입에는 음수값 할당 불가
print("value of integer : \(integer), value of unsignedInteger : \(unsignedInteger)")
print("max of Int : \(Int.max), min of Int : \(Int.min)")
print("max of UInt : \(UInt.max), min of UInt : \(UInt.min)")

let largeInteger : Int64 = Int64.max
let smallInteger : UInt8 = UInt8.max
print("max of Int64 : \(largeInteger), max of UInt8 : \(smallInteger)")

//let tooLarge : Int = Int.max + 1 표현범위를 초과하기때문에 오류를 냄
//let cannotBeNegetive : UInt = -5 음수가 될 수 없으므로 오류를 냄

//integer = unsignedInteger 스위프트에서 두개는 다른타입임
integer = Int(unsignedInteger)

//진수벌 정수표현
let decimalInteger : Int = 28
let binaryInteger : Int = 0b11100
let octalInteger : Int = 0o34
let hexadecimalInteger : Int = 0x1C
```

<h3>Bool</h3>

Bool은 불리언타입. 불리언타입은 참 또는 거짓만을 값으로 가짐.

```swift
var boolean : Bool = true
boolean.toggle() //invert true-false
let iLoveYou : Bool = true
let isTimeUnlimited : Bool = false

print("the time is unlimited? : \(isTimeUnlimited)")
```

<h3>Float과 Double</h3>

부동소수점을 사용하는 실수이며 부동소수타입이라고 함. 흔히 우리가 말하는 소수점 자리가 있는 수.

부동소수타입은 정수타입보다 훨씬 
