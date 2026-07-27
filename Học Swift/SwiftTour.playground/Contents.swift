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
    - Control Flow (điều khiển dòng chảy)
            - 
 
 
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


