//: [Previous](@previous)

import Cocoa

var str = "Hello, playground"

var a = 5
var b = 3
let sum = a + b
let sub = a - b
let mul = a * b
let div = a / b
let mod = a % b

var result = 0;
for i in 0...100{
    result += i;
}
print(result);

let PI = 3.1455926;
var pi = 3.14e-2

Int.max
Int.min

Int64.max
Int64.min

let fiftenInDecimal = 15
let fiftenInHex = 0xF
let fiftenInOctal = 0o17
let fiftenInBinary = 0b1111

// 千分位
let million = 1_000_000

var oneThirdFload: Float = 1/3
var oneThridDouble: Double = 1/3

print(oneThirdFload)
print(oneThridDouble)

type(of: PI)
type(of: oneThirdFload)
type(of: oneThridDouble)

// Create an empty array
var array1: Array<Int> = Array<Int>()
var array2: [Int] = []
var array3 = array2
array2.first
type(of: array2.last)

// Initialization with values
var threeInts = [Int](repeating:3, count: 3)
var sixInts = threeInts + threeInts
var fiveInts = [1, 2, 3, 4, 5]

// Common arributes
fiveInts.count
array1.isEmpty

// Access element
fiveInts[2]
// fiveInts[5]
fiveInts[0...2]
type(of: fiveInts[0..<2])

// Traverse
for value in fiveInts{
    print(value)
}

for (index, value) in fiveInts.enumerated(){
    print(index,value)
}

fiveInts.forEach(){
    print($0)
}

// Array modification
array1.append(1)
array1 += [2, 3, 5, 6, 3, 2]

array1.forEach(){
    print($0)
}

for(index, value) in array1.enumerated(){
    print(index, value)
}

print(array1.filter{ $0 % 2 == 0 })

type(of: array1.popLast())

array1.insert(0, at: array1.startIndex)
array1.insert(5, at: array1.endIndex)

array1.remove(at: 4)
array1.removeLast()

// array2.removeLast()

// The different of Array & NSArray
var arrA = [1, 2, 3]
let copyArrA = arrA

func getBufferAddress<T>(array: [T]) -> String {
    return array.withUnsafeBufferPointer {
        return String(describing: $0)
    }
}

// 值引用类型指向不同的内存地址
getBufferAddress(array: arrA)
getBufferAddress(array: copyArrA)
arrA.append(4)
getBufferAddress(array: arrA)
getBufferAddress(array: copyArrA)

// Mutable array [1, 2, 3]
let arrB = NSMutableArray(array: [1, 2, 3])
// 对象引用类型指向同一个内存地址
let copyArrB = arrB
let deepCopyArrB = arrB.copy() as! NSArray

arrB.insert(0, at: 0)
copyArrB
deepCopyArrB

let point = (x: 1, y :4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
    
case let q2 where (point.x < 0) && (point.y > 0):
    print("\(q2) is in quadrant 2")
    
case let q3 where (point.x < 0) && (point.y < 0):
    print("\(q3) is in quadrant 3")
    
case let q4 where (point.x > 0) && (point.y < 0):
    print("\(q4) is in quadrant 4")
    
case (_,0):
    print("\(point) sits on the x-axis")
    
case (0,_):
    print("\(point) sits on the y-axis")
    
default:
    print(("Case not covered."))
}

let age = 25

if case 18...35 = age, age >= 21, age <= 30{
    print("In cool demographic and of drinking age")
}


//: [Next](@next)
