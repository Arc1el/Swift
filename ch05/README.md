#### 연산자
스위프트의 연산자는 특정한 문자로 표현한 함수라 할 수 있음. 특정 연산자의 역할을 프로그래머의 의도대로 변경 할 수 있음.

연산되는 값의 수에따라 단항, 이항, 삼항 등으로 구분하기도 하며 연산자의 위치에 따라 전위, 중위, 후위등으로 구분하기도 함

|분류|설명|예|
|---|---|:---:|
|단항연산자|피연산자가 한개인 연산자|!A|
|이항연산자|피연산자가 두개인 연산자|A + B|
|삼항연산자|피연산자가 세개인 연산자|A ? B : C|
|전위연산자|연산자가 피연산자 앞에 위치하는 연산자|!A|
|중위연산자|연산자가 피연산자 사이에 위치하는 연산자|A + B|
|후위연산자|연산자가 피연산자 뒤에 위치하는 연산자|A!|

스위프트는 띄어쓰기도한 중요한 문법중 하나이기 때문에 연산자의 앞과 뒤중 어디에 공백이 있는지 중요함.

#### 할당연산자
|연산자|부호|설명|
|---|---|---|
|할당(대입)연산자|A = B|A에 B의 값을 할당함. 서로 다른 데이터타입이라면 오류가 발생|

#### 산술연산자
|연산자|부호|설명|
|---|---|---|
|더하기 연산자|A + B|A와 B를 더한 값을 반환합니다|
|빼기 연산자|A - B|A에서 B를 뺀 값을 반환합니다|
|곱하기 연산자|A * B|A와 B를 곱한 값을 반환합니다|
|나누기 연산자|A / B|A에서 B를 나눈 값을 반환합니다|
|나머지 연산자|A % B|A를 B로 나눈 나머지를 반환합니다|

#### 비교연산자
|연산자|부호|설명|
|---|:---:|:---:|
|값이 같다|A == B|A와 B가 같은 값인지 불리언 값을 반환|
|값이 크거나 같다|A >= B|A가 B보다 크거나 같은 값인지 비교하여 불리언 값을 반환|
|값이 작거나 같다|A <= B|A가 B보다 작거나 같은 값인지 비교하여 불리언 값을 반환|
|값이 크다|A > B|A가 B보다 큰 값인지 비교하여 불리언 값을 반환|
|값이 작다|A < B|A가 B보다 작은 값인지 비교하여 불리언 값을 반환|
|값이 같지 않다|A != B|A와 B가 다른 값인지 비교하여 불리언 값을 반환|
|참조가 같다|A === B|A와 B가 참조타입일때 A와 B가 같은 인스턴스를 가리키는지 비교하여 불리언 값을 반환|
|참조가 같지 않다|A !== B|A와 B가 참조타입일때 A와 B가 같지 않은 인스턴스를 가리키는지 비교하여 불리언 값을 반환|
|패턴매치|A ~= B|A와 B의 패턴이 매치되는지 확인하여 불리언 값을 반환|

```swift
let valueA : Int = 3
let valueB : Int = 5
let valueC : Int = 5

let isSameValueAB : Bool = valueA == valueB
let isSameValueBC : Bool = valueB == valueC

let referenceA : SomeClass = SomeClass()
let referenceB : SomeClass = SomeClass()
let referenceC : SomeClass = referenceA

let isSameReferenceAB : Bool = referenceA === referenceB
let isSameReferenceBC : Bool = referenceB === referenceC
```

#### 삼항 조건 연산자
|연산자|부호|설명|
|---|:---:|:---:|
|삼항 조건 연산자|Question ? A : B|Question(불리언)값이 참이면 A를, 거짓이면 B를 반환|

```swift
var valueA : Int = 3
var valueB : Int = 5
var biggerValue : Int = valueA > valueB ? valueA : valueB

valueA = 0
valueB = -3
biggerValue = valueA > valueB ? valueA : valueB

var stringA : String = ""
var stringB : String = "String"
var resultValue : Double = stringA.isEmpty ? 1.0 : 0.0
resultValue = stringB.isEmpty ? 1.0 : 0.0
```

#### 범위 연산자
값(수)의 범위를 나타내고자 할때 사용

|연산자|부호|설명|
|---|:---:|:---:|
|폐쇄범위 연산자|A...B|A부터 B까지의 수를 묶어 범위를 표현. A와 B를 포함함|
|반폐쇄범위 연산자|A..<B|A부터 B미만까지의 수를 묶어 범위를 포현. A를 포함하고 B를 포함하지 않음|
|단방향범위 연산자|A...|A이상의 수를 묶어 범위를 표현. A를 포함함|
||...A|A이하의 수를 묶어 범위를 표현. A를 포함함|
||..<A|A미만의 수를 묶어 범위를 표현. A를 포함하지 않음.|

