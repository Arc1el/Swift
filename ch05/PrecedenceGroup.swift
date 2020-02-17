/*
precedencegroup
{
higherThan : 더낮은 우선순위 그룹이름
lowerThan : 더 높은 우선순위 그룹이름
associativity : 결합방향(left/right/none) 따로 설정하지 않으면 none으로 디폴트값이 적용되어있음.
assignment : 할당방향 사용(true/false) true를 사용하는경우 옵셔널 체이닝 사용시 오른쪽부터 체이닝이 시작됨. 디폴드값은 false.
}
만약 우선순위 그룹을 명시해주지 않으면 우선순위가 가장높은 DefaultPrecedence그룹을 우선순위로 갖게됨.
*/

infix operator ** : MultiplicationPrecedence

import Foundation //String타입의 contains메서드를 사용하기위해 파운데이션 프레임워크를 임포트

func ** (lhs : String, rhs : String) -> Bool
{
    return lhs.contains(rhs)
}

let helloHyeonmin : String = "Hello Hyeonmin"
let hyeonmin : String = "Hyeonmin"
let isContainsHyeonmin : Bool = helloHyeonmin ** hyeonmin

print(isContainsHyeonmin)
