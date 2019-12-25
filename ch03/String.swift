let name : String = "hyeonmin"

//빈 문자열생성, 변수로 선언했기때문에 수정및 변경이 가능
var introduce : String = String()

//append 메서드를 사용하여 문자열을 이어붙일 수 있음
introduce.append("My name is")

//+연산자를 통해서도 문자열을 이어붙일 수 있음
introduce = introduce + " " + name + "입니다."

print(introduce)

print("count of name : \(name.count)")
print("is introduce empty? : \(introduce.isEmpty)")

let unicodeScalarValue : String = "\u{2665}"
print(unicodeScalarValue)

let hello : String = "Hello"
let hyeonmin : String = "hyeonmin"
var greeting : String = hello + " " + hyeonmin + "!"
print(greeting)

greeting = hello
greeting += " "
greeting += hyeonmin
greeting += "!"
print(greeting)

var isSameString : Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

greeting = """
안녕하세요 저는 현민입니다.
잘부탁합니다!
"""
