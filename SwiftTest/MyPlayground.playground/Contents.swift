//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let tem = 60
let team: Int = 60

let priceinferred = 39.99
let priceExplicit: Double = 39.99

let onSaleinferred = true
let onSaleExplicit: Bool = false

let nameInferred = "who"
let nameExplicit: String = "you"

if onSaleinferred {
    print("\(nameInferred) on sale for")
} else {
    print("\(nameInferred) on sale for \(priceinferred)")
}


class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total: Double, taxPot: Double) {
        self.total = total
        self.taxPct = taxPot
        subtotal = total / (taxPot + 1)
    }
    
    func calcTipWithTipPort(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPort(tipPct: 0.15))")
        print("18%: \(calcTipWithTipPort(tipPct: 0.18))")
        print("20%: \(calcTipWithTipPort(tipPct: 0.20))")
    }
    
    func returnPossibleTips() -> [Int : Double] {
        let possibleTipsInferrd = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        var retval = [Int : Double]()
        for possibleTip in possibleTipsInferrd {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPort(tipPct: possibleTip)
        }
        return retval
    }
    
}


let tipCalc = TipCalculator.init(total: 33.25, taxPot: 0.06)
tipCalc.printPossibleTips()



let possibleTipsInferred  = [0.15, 0.18, 0.20]
let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20];

for possibleTip in possibleTipsInferred {
    print("\(possibleTip * 100): \(tipCalc.calcTipWithTipPort(tipPct: possibleTip))")
}

for i in 0..<possibleTipsInferred.count {
    let possibleTip = possibleTipsInferred[i]
    print("\(possibleTip * 100): \(tipCalc.calcTipWithTipPort(tipPct: possibleTip))")
    
}


//元组
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The staus code is \(http404Error.0)")

print("The status message is \(http404Error)")


let http200Status = (statusCode: 200, description: "OK")

let code = http200Status.statusCode
let des = http200Status.description

var perhapsInt: Int?
var perhapsStr: String?

var myString: String?
myString = "Hello Seift"
if myString != nil {
    print(myString)
} else {
    print("myString has nil value")
}

var newString: String!
newString = "Hello"

if newString != nil {
    print(newString)
} else {
    print("newString has nil valude")
}

if let yourString = myString {
    print(yourString)
} else {
    print("your string does not have a valude")
}

let constA = 44
print(constA)

var index = 10

while index < 20 {
    print("Valude of index is\(index)")
    index = index + 1
}

repeat{
    print("Valude of index is\(index)")
    index = index + 1

} while index < 20


var stringA = "Hello, Swift"

var stringB = String("Hello, Swift")

stringA = ""
if stringA.isEmpty {
    print("is empty")
} else {
    print("is not empty")
}

//var someArray = [Int]()
//var someInts = [Int](repeating: 10, count: 3)
//var someVar = someInts[0]

var someInts = [Int]()
someInts.append(20)
someInts.append(30)
someInts += [40]

var someVar = someInts[0]

func student(name: String) -> String {
    return name
}

print(student(name: "first program"))
func display(nol: Int) -> Int {
    let a = nol
    return a
}
print(display(nol: 100))

func mult(no1: Int, no2: Int) -> Int {
    return no1 * no2
}
print(mult(no1: 2, no2: 20))

func funcname() -> String {
    return "Alice"
}

func la(array: [Int]) -> (large: Int, small: Int) {
    var lar = array[0]
    var sma = array[0]
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        } else {
            lar = i
        }
    }
    return(lar, sma)
    
}
let num = la(array: [40, 12, -5, 88, 100])

print(num.large)


func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let stringcmp = ascend(s1: "swift", s2: "great")
print(stringcmp)

let sum = {(no1: Int, no2: Int) -> Int in
    return no1 + no2
}

let digits = sum(10, 20)
print(digits)

//let cout = [5, 10, -6, 75, 20]
//var descending = sort(cout, {n1, n2 in n1 > n2})
//var ascending = sort(cout, {n1, n2 in n1 < n2})
//print(descending)
//print(ascending)



enum DaysofaWeek {
    case Sunday
    case Monday
    case Saturday
}

enum Names {
    case Swift
    case Closures
}

var lang = Names.Closures
lang = .Closures

switch lang {
case .Swift:
    print("Welcome to Swift")
default:
    print("Introduction")
}

enum Climate {
    case India
    case America
    case Africa
    case Australia
}

var season = Climate.America
season = .America
switch season {
case .India:
    print("Climate is Bot")
case .America:
    print("Climate is Cold")
default:
    print("Climate is not predicatable")
}

enum Student {
    case Name(String)
    case Mark(Int, Int, Int)
}
var studentDetails = Student.Name("Swift")
var studentMarks = Student.Mark(98, 97, 96)

switch studentMarks {
case .Name(let studName):
    print("Student name is: \(studName).")
default:
    print("Nothing")
}

struct MarkStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
}


struct StudentMarks {
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}

let marks = StudentMarks()
print(marks.mark1)
print(marks.mark2)
print(marks.mark3)

struct MarksStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct

bStruct.mark = 97
print(aStruct.mark)
print(bStruct.mark)


struct Marks {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var someMarks = Marks(mark1: 98, mark2: 99, mark3: 100)
print(someMarks.mark1)
print(someMarks.mark2)
print(someMarks.mark3)

class  Stud {
    var studentName: String = ""
    var mark: Int = 0
    var mark2: Int = 0
}

let studrecord = Stud()

class SampleClass: Equatable {
    static func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
        return lhs.myProperty == rhs.myProperty
    }
    
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
let sqClass1 = SampleClass(s: "Hello")
let sqClass2 = SampleClass(s: "Hello")
sqClass1 === sqClass2
print(sqClass1)
sqClass2 !== sqClass2
print(sqClass2)

class StudDetails {
    var stName: String!
    var mark: Int!
    init(stName: String, mark: Int) {
        self.stName = stName
        self.mark = mark
    }
    deinit {
        print(self.stName)
        print(self.mark)
    }
}



		
