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
