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
