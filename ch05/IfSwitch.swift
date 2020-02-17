let first : Int = 5
let second : Int = 7

if first > second
{
    print("first > second")
}
else if first < second
{
    print("first < second")
}
else
{
    print("first == second")
}

//결과는 "first < second"가 출력됨

var biggerValue : Int = 0

if first > second
{
    biggerValue = first
}
else if first < second
{
    biggerValue = second
}
else if first == 5
{
    biggerValue = 100
}

print(biggerValue)


let integerValue : Int = 5

switch integerValue
{
case 0 :
    print("Value == zero")
case 1...10 :
    print("Value == 1-10")
    fallthrough
case Int.min..<0, 101..<Int.max :
    print("Value < 0 or Value > 100")
default :
    print("10 < Value <= 100")
}

