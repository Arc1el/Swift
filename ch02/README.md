<h3>변수</h3>

변수를 선언하는방법 : var 키워드를 사용. var [변수명] : [데이터타입] = [값]*의 형태로 선언. 데이터타입은 생략이 가능.


변수를 생성할때 데이터 아입을 생략하면 컴파일러가 변숫값의 타입을 추론하여 타입을 지정함.


변수 또는 상수의 이름 뒤에 콜론을 붙이고 타입을 명시하는것을 타입지정이라고 함.


타입추론을 사용하면 컴파일러가 타입을 추론해야하므로 컴파일에 오랜시간이 걸리므로 스위프트에 익숙해졌을때 사용해야함.


<h3>변수사용</h3>
  
```swift
var name : String = "hyeonmin"
var age : Int = 100
var job = "ios programmer" //타입추론사용
var height = 179.8

print("\(type(of : height))")

age = 23
job = "Writer"

print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만 키는 \(height)센티미터입니다.")
```

<h3>상수</h3>

상수를 선언하는 방법 : let키워드를 사용, let [상수명] : [데이터타입] = [값]의 형태로 선언. 데이터타입은 생략이 가능

<h3>상수사용</h3>

```swift
let name : String = "hyeonmin"
var age : Int = 23
var job = "ios programmer" //타입추론사용
let height = 179.8


age = 23
job = "Writer"


print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만 키는 \(height)센티미터입니다.")
```
