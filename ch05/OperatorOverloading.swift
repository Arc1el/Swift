prefix operator **
prefix func ** (value:Int) -> Int
{
    return value * value
}

let minusFive : Int = -5
let sqrtMinusFive : Int = **minusFive

print(sqrtMinusFive)

prefix func ! (value: String) -> Bool
{
    return value.isEmpty
}

var stringValue : String = "hyeonmin"
var isEmptyString : Bool = !stringValue

print(isEmptyString)

stringValue = ""
isEmptyString = !stringValue

print(isEmptyString)

prefix func **(value : String) -> String
{
    return value + " " + value
}

let resultString : String = **"hyeonmin"

print(resultString)

postfix operator ***
postfix func ***(value:Int) -> Int
{
    return value + 10
}

let five : Int = 5
let fivePlusTen : Int = five***

print(fivePlusTen)

prefix operator ****
postfix operator *****

prefix func ****(value:Int) -> Int
{
    return value * value
}

postfix func *****(value:Int) -> Int
{
    return value + 10
}

let sqrtFivePlusTen : Int = ****five*****

print(sqrtFivePlusTen)
