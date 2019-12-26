//특정 항목에 순한열거형 항목 명시
enum ArithmeticExpression
{
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

//열거형 전체에 순환열거형 명시
indirect enum ArithmeticExpression2nd
{
    case number(Int)
    case addition(ArithmeticExpression2nd, ArithmeticExpression2nd)
    case multiplication(ArithmeticExpression2nd, ArithmeticExpression2nd)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression : ArithmeticExpression) -> Int
{
    switch expression
    {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

let result : Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")
