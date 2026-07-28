import UIKit


/**
 
 - Trong tour này bạn sẽ được tìm được các chức năng và cú pháp trong swift
    - Cách khai báo biến hằng - Explicit - Implitcit
    - Hằng ko quan tâm compile time,  phải gán ít nhất 1
    - ép kiểu, ghi rõ kiểu mong muốn String(myVariable)
    - include value in String:   \(myValue)
    -  """ """ : multiple lines Strings, để ý cuối cùng
    -   Array                   get - set
    - Dictionary              get-set
    - Khái báo dic empty và array empty by explitcit
    - Control Flow (điều khiển dòng chảy trong cấu trúc dữ liệu) trong python là list dic, tuple,
            - conditional  - IF - ELSE IF - Switch-case
            - make loop: For - While - repeat - while
            - Optional? -
            - iterate over items in a dictionary , array, range
            - while dk đúng mới vào trong - còn repeat while chạy trước 1 lần rồi kiểm tra đk
 
    - Hàm lồng hàm phức tạp dài không nên dùng
    - funcion - block code có tên, case đặt biệt của closure -   có truyền vào và return
    - closure - block code ko tên -                                              có truyền vào và return
    - Func are frist class type -> nghĩa là có thể xem nó như 1 biến bình thường - truyền vào hàm - trả về hàm
 
 */

print("Hello Swift Tour!")

// MARK: Simple Value -  var, let

var myVariable = 22
var myNumber = 11
var myfloat = 3.14
var myString = "Hello Swift"

let myConstant:Float
myConstant = 3.14
print(myConstant)


let label = "The width is "
let width = 94
let widthLabel = label + String(width)


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
Even though there's whitespace to the left,the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.
I still have \(apples + oranges) pieces of fruit.
"""

let quotations = """
    Even though there's whitespace to the left,the actual lines aren't indented.
    Except for this line.
    Double quotes (") can appear without being escaped.
    I still have \(apples + oranges) pieces of fruit.
    """



var arr_fruits = ["strawberries", "limes", "tangerines"]

var dic_occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]

arr_fruits[1] = "grapes"
arr_fruits.append("blueberries")

dic_occupations["Jayne"] = "Public Relations"


print(arr_fruits)
print(dic_occupations)

arr_fruits = []
dic_occupations = [:]

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]


// Control Flow

// tổng điểm toàn đội
var teamScore = 0     //+3. +1.  +3.  +1. +1
let individualScores = [75, 43, 103, nil, 12] // data structure

for item in individualScores {
    if item ?? 0 > 50{
        teamScore = teamScore + 3
    }else{
        teamScore = teamScore + 1

    }
}

print("teamScore:\(teamScore)")


let scoreDecoration = if teamScore > 10{
    "🐷"
}else{
    ""
}

print("Score:", teamScore, scoreDecoration)


var optionalString: String? = "Hello"  // an optional value either contains a value or contains nil
print(optionalString == nil)



var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello \(name)"
}else{
    greeting = "Hello Nil"

}
print(greeting)

let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)" //

if let nickname {
    print("Hey, \(nickname)")
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


// Dictionary

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

var n = 2
while n < 0 {
    n *= 2
}
//print(n)


var m = 2
repeat {
    m *= 2
} while m < 0
//print(m)


var total = 0
var range01:Range<Int> =  0..<4
// Explicitly accept the closed range
let range02: ClosedRange<Int> = 1...5

for i in range02 {
    print(i)
}


for i in 0..<4 {
    total += i
}
print(total) //  total = 0 +1 + 2 +3



func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")


func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


// Viết 1 hàm calculateStatistics trả về compound value - tuple (max, min,sum)
func calculateStatictis(scores:[Int]) -> (min:Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for sc in scores{
        if sc > max{
            max = sc
        }else if sc < min{
            min = sc
        }
        sum += sc
    }
    
    return (min,max,sum)
}

let statictis = calculateStatictis(scores: [5, 3, 100, 3, 9])

print(statictis.max)  // can be referred to either by name or by number.
print(statictis.1)

func returnFifteen() -> Int { //  that’s long or complex. dài và phức tạp nên tách ra
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


// Funcion are first class type
//The code in a closure has access to things like variables
func makeIncremeter() -> ((Int)->(Int)){ //
    
    func addOne(y:Int) -> Int{
        return y + 1
    }
    
    return addOne
}

// gán hàm addOne vào biến increment
var increment = makeIncremeter()
// lúc này increment đóng vai như hàm addOne
increment(7)


// tạo 1 closure làm tham số truyền vào cho hàm
// Viết 1 hàm kiểm xem mảng truyền vào có số nào nhỏ hơn 10 không

func hasAnyMatch(list:[Int], condition:((Int) ->(Bool)) ) -> Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool{
    return number < 10
}

var numbers = [20, 19, 11, 12,33]
hasAnyMatch(list: numbers, condition: lessThanTen)




let testMap01 = numbers.map({ (number:Int) in
    return number * 3
    
})

let testMap02 = numbers.map { item in
    return item * 2
}

let oddArray = numbers.map { item in
    if item % 2 == 0{
        return item
    }
    
    return 0
}

print(oddArray)

// writing closures more concisely. có 1 số lựa chọn để viết closure ngắn gọn hơn

// tạo 1 func nhận closure trả về kiểu int
func calculate(operation: (Int,Int,Int,Int) -> Int ) -> Int {
    
    return operation(10, 20, 30, 40)
}

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumber01 = numbers.sorted { $0 > $1 }
let sortedNumber02 = numbers.sorted { a, b in
    return a > b
}
let result = calculate{$0+$1+$2+$3}

print(sortedNumber01)
print(result)
