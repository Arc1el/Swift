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


