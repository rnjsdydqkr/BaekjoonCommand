//
//  main.swift
//  BaekjoonCommand
//
//  Created by 박권용 on 2023/05/22.
//

import Foundation

// *********************
// [1268] 임시 반장 정하기
// *********************
/// TODO 진행중~
let inputInt = Int(readLine()!)!
var numClass: [[Int]] = Array(repeating: Array(repeating: 0, count: inputInt), count: inputInt)

for i in 0 ..< inputInt {
  let inputIntArray = readLine()!.split(separator: " ").map{( Int($0)! )}
  numClass[i] = inputIntArray
}

//00 > 0
//10 > 1
//20 > 2
//30 > 3
//40 > 4

print(numClass)

// *********************
// [1259] 팰린드롬수
// *********************
//var resultArr: [String] = []
//while true {
//  let inputString = readLine()!
//  let inputIntArray = Array(inputString).map{( Int(String($0))! )}
//  let inputIntReverseArray: [Int] = inputIntArray.reversed()
//
//  if inputIntArray.count == 1 && inputIntArray[0] == 0 {
//    break
//  }
//
//  if inputIntArray == inputIntReverseArray {
//    resultArr.append("yes")
//  } else {
//    resultArr.append("no")
//  }
//
//}
//
//for result in resultArr {
//  print(result)
//}

// 런타임 에러
//var inputArray: [String] = []
//while true {
//  let inputStringArr = Array(readLine()!)
//  var inputIntArr = inputStringArr.map{( Int(String($0)) ?? 0 )}
//
//  if inputIntArr.count == 1 && inputIntArr.first! == 0 {
//    break
//  } else {
//    var compareArr1: [Int] = []
//    var compareArr2: [Int] = []
//    var centerIndex = inputIntArr.count / 2
//    if inputIntArr.count % 2 != 0 {
//      inputIntArr.remove(at: centerIndex)
//      centerIndex = inputIntArr.count / 2
//    }
//    for i in 0 ... centerIndex - 1 {
//      compareArr1.append(inputIntArr[i])
//    }
//    for i in stride(from: inputIntArr.count - 1, through: centerIndex, by: -1) {
//      compareArr2.append(inputIntArr[i])
//      if i == centerIndex {
//        break
//      }
//    }
//    if compareArr1 == compareArr2 {
//      inputArray.append("yes")
//    } else {
//      inputArray.append("no")
//    }
//  }
//}
//
//for input in inputArray {
//  print(input)
//}

// *********************
// [1236] 성 지키기 - 구현 로직을 좀 더 쉬운 방법으로 찾아보자
// *********************
//let inputString = readLine()!
//let inputArray = inputString.split(separator: " ").map{( Int($0)! )}
//
//var row = 0
//if let first = inputArray.first { row = first }
//var column = 0
//if let last = inputArray.last { column = last }
//
//var groundArray: [[String]] = Array(repeating: Array(repeating: ".", count: column), count: row)
//var resultCount = 0
//
//for i in 0 ..< row {
//  let inputString = readLine()!
//  let inputArray = Array(inputString).map{( String($0) )}
//  groundArray[i] = inputArray
//}
//
//var row_point_count = 0
//for i in 0 ..< row {
//  var row_x_count = 0
//  for j in 0 ..< column {
//    if groundArray[i][j] == "X" {
//      row_x_count += 1
//    }
//  }
//  if row_x_count == 0 {
//    row_point_count += 1
//  }
//}
//
//var column_point_count = 0
//for i in 0 ..< column {
//  var column_x_count = 0
//  for j in 0 ..< row {
//    if groundArray[j][i] == "X" {
//      column_x_count += 1
//    }
//  }
//  if column_x_count == 0 {
//    column_point_count += 1
//  }
//}
//
//print(max(row_point_count, column_point_count))

//let inputString = readLine()!
//let inputArray = inputString.split(separator: " ").map{( Int($0)! )}
//
//var row = 0
//if let first = inputArray.first { row = first }
//var column = 0
//if let last = inputArray.last { column = last }
//
//var groundArray: [[String]] = Array(repeating: Array(repeating: ".", count: column), count: row)
//var resultCount = 0
//
//for i in 0 ..< row {
//  let inputString = readLine()!
//  let inputArray = Array(inputString).map{( String($0) )}
//  groundArray[i] = inputArray
//}
//
//for i in 0 ..< groundArray.count {
//  var x_row_count = 0
//  for j in 0 ..< groundArray[i].count {
//    if groundArray[i][j] == "X" {
//      x_row_count += 1
//      break
//    }
//  }
//
//  if x_row_count == 0 {
//    var xColumnCountArr: [Int] = []
//    for x in 0 ..< column {
//      var x_column_count = 0
//      for y in 0 ..< row {
//        if groundArray[y][x] == "X" {
//          x_column_count += 1
//        }
//      }
//      xColumnCountArr.append(x_column_count)
//    }
//    for (index, xColumnCount) in xColumnCountArr.enumerated() {
//      if xColumnCount == xColumnCountArr.min() {
//        groundArray[i][index] = "X"
//        resultCount += 1
//        break
//      }
//    }
//
//  }
//
//}
//print(resultCount)


// *********************
// [1157] 단어 공부
// *********************
//let inputString = readLine()!
//let alpaArr = Array(inputString).map{( $0.uppercased() )}
//let removeDuplicationArray = removeDuplication(array: alpaArr)
//var sameDataArray = [[String]](repeating: [], count: removeDuplicationArray.count)
//var sameDataCountArray = [Int](repeating: 0, count: removeDuplicationArray.count)
//
//for (index, removeDuplication) in removeDuplicationArray.enumerated() {
//  sameDataArray[index].append(contentsOf: alpaArr.filter { $0 == removeDuplication })
//}
//
//for sameData in sameDataArray {
//  sameDataCountArray.append(sameData.count)
//}
//
//var count = 0
//var resultAlpa = ""
//for sameData in sameDataArray {
//  if sameData.count == (sameDataCountArray.max() ?? 0) {
//    resultAlpa = sameData[0]
//    count += 1
//  }
//}
//
//if count > 1 {
//  resultAlpa = "?"
//}
//
//print(resultAlpa)
//
//func removeDuplication(array: [String]) -> [String] {
//  let setArray = Set(array)
//  let duplicationRemovedArray = Array(setArray)
//  return duplicationRemovedArray
//}

// *********************
// [1152] 단어의 개수
// *********************
//let inputString = readLine()!
//let strArr = inputString.split(separator: " ")
//print(strArr.count)

// *********************
// [1145] 적어도 대부분의 배수
// *********************
//let inputString = readLine()!
//let numArray = inputString.split(separator: " ").map { Int($0)! }.sorted()
//var resultArray: [Int] = []
//
//for num in numArray {
//  var multiNum = 1
//  while true {
//    multiNum += 1
//    let resultNum = num * multiNum
//    var count = 0
//    for num in numArray {
//      if resultNum % num == 0 {
//        count += 1
//      }
//    }
//    if count >= 3 {
//      resultArray.append(resultNum)
//      break
//    }
//  }
//}
//if let resultNum = resultArray.min() {
//  print(resultNum)
//}

// *********************
// [1110] 더하기 사이클
// *********************
//let inputString = readLine()!
//let originNum = Int(inputString)!
//var num = Int(inputString)!
//var count = 0
//while true {
//  num = generaterNum(num: num)
//  count += 1
//  if originNum == num {
//    break
//  }
//}
//print(count)
//
//private func generaterNum(num: Int) -> Int {
//  let number = Int(exactly: num)!
//  let firstNum = number % 10
//  let secondNum = number / 10
//  let sumNum = firstNum + secondNum
//  let newNum = Int(String(firstNum) + String(sumNum % 10))!
//  return newNum
//}

// *********************
// [1100] 하얀 칸
// *********************
//var strArray: [[String]] = Array(repeating: Array(repeating: ".", count: 8), count: 8)
//var count: Int = 0
//for index in 0 ..< strArray.count {
//  let inputArray = Array(readLine()!).map{ String($0) }
//  strArray[index] = inputArray
//}
//for i in 0 ..< strArray.count {
//  for j in 0 ..< strArray[i].count {
//    if (i + j) % 2 == 0, strArray[i][j] == "F" {
//      count += 1
//    }
//  }
//}
//print(count)

// *********************
// [1085] 직사각형에서 탈출
// *********************
//let input = readLine()!
//let arr = input.split(separator: " ").map({ Int($0)! })
//let minValue = min(arr[0], arr[1], arr[2] - arr[0], arr[3] - arr[1])
//print(minValue)

// *********************
// [1076] 저항
// *********************
//let colorArray = ["black": 0, "brown": 1, "red": 2, "orange": 3, "yellow": 4, "green": 5, "blue": 6, "violet": 7, "grey": 8, "white": 9]
//var first = "", second = "", third = ""
//if let input = readLine() { first = input }
//if let input2 = readLine() { second = input2 }
//if let input3 = readLine() { third = input3 }
//
//let result = ((colorArray[first] ?? 0) * 10 + (colorArray[second] ?? 0)) * multiple(colorArray[third] ?? 0)
//
//print(result)
//
//func multiple(_ count: Int) -> Int {
//  var num = 1
//  for _ in 0 ..< count {
//    num *= 10
//  }
//  return num
//}

//let colorArray = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
//let colorValueInput = readLine()!
//let colorValueInput2 = readLine()!
//let colorMultiInput = readLine()!
//
//let firstString = String(colorArray.firstIndex(of: colorValueInput)!)
//let secondString = String(colorArray.firstIndex(of: colorValueInput2)!)
//var zeroCount = ""
//var resultString = ""
//
//for i in 0 ... colorArray.firstIndex(of: colorMultiInput)! {
//  if i != 0 {
//    zeroCount += "0"
//  }
//}
//resultString = firstString + secondString + zeroCount
//print(Int(resultString)!)

// *********************
// [1075] 나누기
// *********************
//let input = Int(readLine()!)!
//let input2 = Int(readLine()!)!
//
//var inputNum = input - (input % 100)
//var inputNum2 = (inputNum % input2) == 0 ? (inputNum / input2) * input2 : ((inputNum / input2) + 1) * input2
//print(String(format: "%02d", inputNum2 % 100))

// *********************
// [1037] 약수
// *********************
////let _ = readLine()!
////let arr = readLine()!.split{ $0 == " " }.map({ Int($0)! })
////print(arr.min()! * arr.max()!)
//
////let _ = readLine()!
////let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })
////print(arr.min()! * arr.max()!)
//
//let inputCount = readLine()!
//let input = readLine()!
//let arr = input.components(separatedBy: " ").map({ Int($0)! }).sorted()
//print(arr[0] * arr[Int(inputCount)! - 1])


// *********************
// [1032] 명령 프롬프트
// *********************
//let input = readLine()
//
//var inputStringArray = [String]()
//var tempCharacterArray = [Character]()
//var resultStringArray = [String]()
//var resultString = ""
//
//if let inputLineCount = input {
//  let count = Int(inputLineCount) ?? 0
//  for _ in 0 ..< count {
//    let inputString = readLine()
//    inputStringArray.append(inputString ?? "")
//  }
//}
//var inputCharArray = inputStringArray.map({ Array($0) })
//
//if inputCharArray.count == 1 {
//  resultStringArray.append(String(inputCharArray[0]))
//} else if inputCharArray.count > 1 {
//  tempCharacterArray = inputCharArray[0]
//  for compareCount in 0 ..< inputCharArray.count - 1 {
//    for charIndex in 0 ... inputCharArray[0].count - 1 {
//      if tempCharacterArray[charIndex] == inputCharArray[compareCount + 1][charIndex] {
//        resultStringArray.append(String(inputCharArray[compareCount][charIndex]))
//      } else {
//        resultStringArray.append("?")
//      }
//    }
//    tempCharacterArray = resultStringArray.map({ Character($0) })
//    if compareCount != inputCharArray.count - 2 {
//      resultStringArray = []
//    }
//  }
//}
//resultString = resultStringArray.reduce("", +)
//print(resultString)

// *********************
// [1009] 분산처리
// *********************
//var allArray = [Int]()
//var ruleArray = [[1], [2, 4, 8, 6], [3, 9, 7, 1], [4, 6], [5], [6], [7, 9, 3, 1], [8, 4, 2, 6], [9, 1], [10]]
//
//let input = readLine()
//
//if let input = input {
//  let inputCount = Int(input)!
//
//  for _ in 0 ... inputCount - 1 {
//    let line = readLine()
//    if let line = line {
//      let lineArray = line.components(separatedBy: " ")
//      let first = Int(lineArray.first!)!
//      let second = Int(lineArray.last!)!
//
//      let ruleArrayIndex = first % ruleArray.count
//      if ruleArrayIndex == 0 {
//        allArray.append(10)
//      } else {
//        let ruleArrayIndex2 = second % ruleArray[ruleArrayIndex - 1].count
//        if ruleArrayIndex2 == 0 {
//          allArray.append(ruleArray[ruleArrayIndex - 1][ruleArray[ruleArrayIndex - 1].count - 1])
//        } else {
//          allArray.append(ruleArray[ruleArrayIndex - 1][ruleArrayIndex2 - 1])
//        }
//      }
//    }
//  }
//
//  for i in 0 ... inputCount - 1 {
//    print(allArray[i])
//  }
//
//}


