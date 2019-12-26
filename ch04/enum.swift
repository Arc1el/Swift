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

//항목순회
enum School4th : CaseIterable
{
    case primary
    case elemantary
    case middle
    case high
    case college
    case university
    case graduate
}

let allCases : [School4th] = School4th.allCases
print(allCases)

//available속성을 갖는 열거형의 항목순회
enum SchoolAdvance : String, CaseIterable
{
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    @available(iOS, obsoleted : 12.0)
    case graduate = "대학원"
    
    static var allCases: [SchoolAdvance]
    {
        let all : [SchoolAdvance] = [.primary, .elementary, .middle, .high, .college, .university]
        #if os(iOS)
        return all
        #else
        return all + [.graduate]
        #endif
    }
}

let allCases2nd : [SchoolAdvance] = SchoolAdvance.allCases
print(allCases2nd)
