//
//  main.swift
//  BaekjoonCommand
//
//  Created by 박권용 on 2023/05/22.
//

import Foundation

// *********************
// 떡볶이 떡 만들기
// *********************

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let (n, m) = (input.first!, input.last!)
let riceCakes = readLine()!.split(separator: " ").map{ Int(String($0))! }
var start = 0
var mid = 0
var end = riceCakes.max()!
let array = Array(0...end)
var culculatedArray = [Int]()
var sum = 0
var result = 0


if let binarySearchResult = binarySearch(array: array, target: m, start: start, end: end) {
  print(binarySearchResult)
} else {
  print(result)
}

func binarySearch(array: [Int], target: Int, start: Int, end: Int) -> Int? {
  if start > end {
    return nil
  }
  mid = (start + end) / 2
  
  for riceCake in riceCakes {
    if riceCake > mid {
      culculatedArray.append(riceCake - mid)
    }
  }
  sum = culculatedArray.reduce(0) {$0 + $1}
  culculatedArray = []
  
  if sum == target {
    result = mid
    return result
  } else if sum > target {
    result = mid
    return binarySearch(array: array, target: target, start: mid + 1, end: end)
  } else {
    return binarySearch(array: array, target: target, start: start, end: mid - 1)
  }
}

/*
4 6
19 15 10 17
 
10 6
19 15 10 17 5 8 12 20 25 30
*/

//let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let (n, m) = (input.first!, input.last!)
//let riceCakes = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
//var calculatedArray = [Int]()
//var result = 0
//var otherResult = 0
//var mid = 0
//var sum = 0
//
//print(riceCakes.reduce(0, { $0 + $1 }))
//
//if let binarySearchResult = binarySearch(array: riceCakes, target: m, start: 0, end: n - 1) {
//  result = binarySearchResult
//  print(result)
//} else {
//  for i in (mid + 1) ..< n {
//    calculatedArray.append(riceCakes[i] - result)
//  }
//  sum = calculatedArray.reduce(0, { $0 + $1 })
//  calculatedArray = []
//  
//  if sum > m {
//    while true {
//      result += 1
//      for riceCake in riceCakes {
//        if riceCake > result {
//          calculatedArray.append(riceCake - result)
//        }
//      }
//      sum = calculatedArray.reduce(0, { $0 + $1 })
//      if sum < m {
//        print(result - 1)
//        break
//      }
//    }
//  } else if sum < m {
//    while true {
//      result -= 1
//      for riceCake in riceCakes {
//        if riceCake > result {
//          calculatedArray.append(riceCake - result)
//        }
//      }
//      sum = calculatedArray.reduce(0, { $0 + $1 })
//      if sum >= m {
//        print(result)
//        break
//      }
//    }
//  }
//  
//}
//
//func binarySearch(array: [Int], target: Int, start: Int, end: Int) -> Int? {
//  if start > end {
//    return nil
//  }
//  mid = (start + end) / 2
//  result = array[mid]
//  
//  for i in (mid + 1) ..< n {
//    calculatedArray.append(riceCakes[i] - result)
//  }
//  sum = calculatedArray.reduce(0, { $0 + $1 })
//  calculatedArray = []
//  
//  if sum == target {
//    return result
//  } else if sum > target {
//    return binarySearch(array: array, target: target, start: mid + 1, end: end)
//  } else {
//    return binarySearch(array: array, target: target, start: start, end: mid - 1)
//  }
//}

// *********************
// 이진 탐색 알고리즘
// *********************

/*
10 7
1 3 5 7 9 11 13 15 17 19
10 7
1 3 5 6 9 11 13 15 17 19
*/

//let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let (n, target) = (input.first!, input.last!)
//let array = readLine()!.split(separator: " ").map{ Int(String($0))! }
//var mid = 0
//var result = 0
//
//if let binarySearchResult = binarySearch(array: array, target: target, start: 0, end: n - 1) {
//  result = binarySearchResult
//  print(result + 1)
//} else {
//  print("원소가 존재하지 않습니다.")
//}
//
//func binarySearch(array: [Int], target: Int, start: Int, end: Int) -> Int? {
//  if start > end {
//    return nil
//  }
//  mid = (start + end) / 2
//  if array[mid] == target {
//    return mid
//  } else if array[mid] > target {
//    return binarySearch(array: array, target: target, start: start, end: mid - 1)
//  } else {
//    return binarySearch(array: array, target: target, start: mid + 1, end: end)
//  }
//}

// *********************
// 두 배열의 원소 교체
// *********************

/*
5 3
1 2 5 4 3
5 5 6 6 5
*/

//let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let (n, k) = (input.first!, input.last!)
//var arrayA = readLine()!.split(separator: " ").map{ Int(String($0))! }
//var arrayB = readLine()!.split(separator: " ").map{ Int(String($0))! }
//
//arrayA.sort()
//arrayB.sort(by: >)
//
//for i in 0 ..< k {
//  if arrayA[i] < arrayB[i] {
//    (arrayA[i], arrayB[i]) = (arrayB[i], arrayA[i])
//  } else {
//    break
//  }
//}
//
//print(arrayA.reduce(0) { $0 + $1 })

//let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let (n, k) = (input.first!, input.last!)
//var arrayA = readLine()!.split(separator: " ").map{ Int(String($0))! }
//var arrayB = readLine()!.split(separator: " ").map{ Int(String($0))! }
//
//arrayA.sort()
//arrayB.sort(by: >)
//
//for i in 0 ..< k {
//  if arrayA[i] < arrayB[i] {
//    arrayA[i] = arrayB[i]
//  }
//}
//
//print(arrayA.reduce(0) { $0 + $1 })

// *********************
// 계수 정렬
// *********************

//let array = [7, 5, 9, 0, 3, 1, 6, 2, 9, 1, 4, 8, 0, 5, 2]
//
//var count = Array(repeating: 0, count: array.max()! + 1)
//
//for i in 0 ..< array.count {
//  count[array[i]] += 1
//}
//
//for i in 0 ..< count.count {
//  for _ in 0 ..< count[i] {
//    print(i, terminator: " ")
//  }
//}

// *********************
// 퀵 정렬
// *********************

/*
5, 7, 9, 0, 3, 1, 6, 2, 4, 8

pivot 0
left  1
right 9
start 0
end   9
*/

//var array = [5, 7, 9, 0, 3, 1, 6, 2, 4, 8]
//var pivot = 0
//var left = 0
//var right = 0
//
//func quick_sort(_ array: inout [Int], _ start: Int, _ end: Int) {
//  if start >= end {
//    return
//  }
//  pivot = start
//  left = start + 1
//  right = end
//  while(left <= right) {
//    while(left <= end && array[left] <= array[pivot]) {
//      left += 1
//    }
//    while(right > start && array[right] >= array[pivot]) {
//      right -= 1
//    }
//    if left > right {
//      (array[right], array[pivot]) = (array[pivot], array[right])
//    } else {
//      (array[left], array[right]) = (array[right], array[left])
//    }
//  }
//  quick_sort(&array, start, right - 1)
//  quick_sort(&array, right + 1, end)
//}
//
//quick_sort(&array, 0, array.count - 1)
//print(array)

// *********************
// 삽입 정렬
// *********************

/*
7, 5, 9, 0, 3, 1, 6, 2, 4, 8
5, 7, 9, 0, 3, 1, 6, 2, 4, 8
5, 7, 0, 9, 3, 1, 6, 2, 4, 8
5, 0, 7, 9, 3, 1, 6, 2, 4, 8
0, 5, 7, 9, 3, 1, 6, 2, 4, 8
0, 5, 7, 3, 9, 1, 6, 2, 4, 8
...
 
i 1 2 3 4
j 1 2 b 3 2 1 4 3 2
*/

//var array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
//
//for i in 1 ..< array.count {
//  for j in stride(from: i, to: 0, by: -1) {
//    if array[j] < array[j - 1] {
//      (array[j], array[j - 1]) = (array[j - 1], array[j])
//    } else {
//      break
//    }
//  }
//}
//
//print(array)

// *********************
// 선택 정렬
// *********************

/*
 i          0
 j          1 2 3 4 5 6 7 8 9
 min_index  0 1 3
 */

//var array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
//var min_index = 0
//
//for i in 0 ..< array.count {
//  min_index = i
//  for j in (i + 1) ..< array.count {
//    if array[min_index] > array[j] {
//      min_index = j
//    }
//  }
//  (array[i], array[min_index]) = (array[min_index], array[i])
//}
//
//print(array)

// *********************
// 미로 탈출
// *********************

/*
5 6
101010
111111
000001
111111
111111
*/

//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//let (n, m) = (input.first!, input.last!)
//var graph: [[Int]] = []
//
//let dx = [-1, 1, 0, 0]
//let dy = [0, 0, -1, 1]
//var (nx, ny) = (0, 0)
//
//for _ in 0 ..< n {
//  let inputArray = Array(readLine()!).map{ Int(String($0))! }
//  graph.append(inputArray)
//}
//
//print(bfs(0, 0))
//
//func bfs(_ x: Int, _ y: Int) -> Int {
//  var queue: [(Int, Int)] = []
//  queue.append((x, y))
//  
//  while !queue.isEmpty {
//    let (x, y) = queue.removeFirst()
//    
//    for i in 0 ..< 4 {
//      nx = x + dx[i]
//      ny = y + dy[i]
//      
//      if nx < 0 || nx >= n || ny < 0 || ny >= m {
//        continue
//      }
//      if graph[nx][ny] == 0 {
//        continue
//      }
//      if graph[nx][ny] == 1 {
//        graph[nx][ny] = graph[x][y] + 1
//        queue.append((nx, ny))
//      }
//    }
//  }
//  return graph[n - 1][m - 1]
//}

// *********************
// 음료수 얼려 먹기
// *********************

/*
4 5
00110
00011
11111
00000
*/

//let input = readLine()!.split(separator: " ").map{ Int($0)! }
//let (n, m) = (input.first!, input.last!)
//var graph: [[Int]] = []
//
//var result = 0
//
//for _ in 0 ..< n {
//  let input = readLine()!
//  let inputArray = Array(input).map{ Int(String($0))! }
//  graph.append(inputArray)
//}
//
//for i in 0 ..< n {
//  for j in 0 ..< m {
//    if dfs(i, j) == true {
//      result += 1
//    }
//  }
//}
//
//func dfs(_ x: Int, _ y: Int) -> Bool {
//  if x <= -1 || x >= n || y <= -1 || y >= m {
//    return false
//  }
//  
//  if graph[x][y] == 0 {
//    graph[x][y] = 1
//    dfs(x - 1, y)
//    dfs(x, y - 1)
//    dfs(x + 1, y)
//    dfs(x, y + 1)
//    return true
//  }
//  return false
//}
//
//print(result)

// *********************
// BFS
// *********************

//let graph = [
//  [],
//  [2, 3, 8],
//  [1, 7],
//  [1, 4, 5],
//  [3, 5],
//  [3, 4],
//  [7],
//  [2, 6, 8],
//  [1, 7]
//]
//var visited = Array(repeating: false, count: 9)
//
//func bfs(graph: [[Int]], start: Int, visited: inout [Bool]) {
//  var queue: [Int] = []
//  queue.append(start)
//  visited[start] = true
//  
//  while !queue.isEmpty {
//    let v = queue.removeFirst()
//    print(v, terminator: " ")
//
//    for i in graph[v] {
//      if !visited[i] {
//        queue.append(i)
//        visited[i] = true
//      }
//    }
//  }
//}
//
//bfs(graph: graph, start: 1, visited: &visited)

// *********************
// DFS
// *********************

//let graph = [
//  [],
//  [2, 3, 8],
//  [1, 7],
//  [1, 4, 5],
//  [3, 5],
//  [3, 4],
//  [7],
//  [2, 6, 8],
//  [1, 7]
//]
//var visited = Array(repeating: false, count: 9)
//
//func dfs(graph: [[Int]], v: Int, visited: inout [Bool]) {
//  visited[v] = true
//  print(v, terminator: " ")
//  for i in graph[v] {
//    if !visited[i] {
//      dfs(graph: graph, v: i, visited: &visited)
//    }
//  }
//}
//
//dfs(graph: graph, v: 1, visited: &visited)

// *********************
// 구현 - 왕실의 나이트
// *********************

// K1KA5CB7
// AJKDLSI412K4JSJ9D

//let data = readLine()!
//var result = [String]()
//var numSum = 0
//
//for x in data {
//  if let num = Int(String(x)) {
//    numSum += num
//  } else {
//    result.append(String(x))
//  }
//}
//
//result.sort()
//
//if numSum != 0 {
//  result.append(String(numSum))
//}
//
//print(result.joined())

//let input = readLine()!
//var array = Array(input).map{ String($0) }
//var numStrArray = [String]()
//var strArray = [String]()
//var resultArray = [String]()
//
//for arr in array {
//  if let _ = Int(arr) {
//    numStrArray.append(arr)
//  } else {
//    strArray.append(arr)
//  }
//}
//
//var numSum = numStrArray.map{ Int($0)! }.reduce(0, +)
//
//numStrArray = [String(numSum)]
//
//resultArray = strArray.sorted()
//resultArray.append(contentsOf: numStrArray)
//let result = resultArray.joined()
//
//print(result)

// *********************
// 구현 - 왕실의 나이트 (완전 탑색, 시뮬레이션)
// *********************

//let input = Array(readLine()!).map{ String($0) }
//let x = Int(input.last!)!
//let y = Int(["a", "b", "c", "d", "e", "f", "g", "h"].firstIndex(of: input.first)!) + 1
//var (nx, ny) = (0, 0)
//
//let steps = [(-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-2, 1)]
//
//var result = 0
//
//for step in steps {
//  nx = x + step.0
//  ny = y + step.1
//  
//  if (nx > 0 && nx <= 8) && (ny > 0 && ny <= 8) {
//    result += 1
//  }
//}
//
//print(result)

//let input = Array(readLine()!).map{ String($0) }
//let x = Int(input.last!)!
//let y = Int(["a", "b", "c", "d", "e", "f", "g", "h"].firstIndex(of: input.first)!) + 1
//var (x1, y1) = (x, y)
//let dx = [0, -1, 0, 1]
//let dy = [1, 0, -1, 0]
//var (nx, ny) = (0, 0)
//let moveList = ["R", "U", "L", "D"]
//let nightMoveTotalCaseList = ["RRU", "RRD", "UUR", "UUL", "LLU", "LLD", "DDR", "DDL"]
//var count = 0
//
//for nightMoveTotalCase in nightMoveTotalCaseList {
//  let nightMoveList = Array(nightMoveTotalCase).map{ String($0) }
//  for nightMove in nightMoveList {
//    for i in 0 ..< moveList.count {
//      if nightMove == moveList[i] {
//        nx = x1 + dx[i]
//        ny = y1 + dy[i]
//      }
//      (x1, y1) = (nx, ny)
//    }
//  }
//  if (nx > 0 && nx <= 8) && (ny > 0 && ny <= 8) {
//    count += 1
//  }
//  (nx, ny) = (0, 0)
//  (x1, y1) = (x, y)
//}
//
//print(count)

// *********************
// 구현 - 시각
// *********************
//let timeHourInput = Int(readLine()!)!
//var count = 0
//
//for i in 0 ... timeHourInput {
//  for j in 0 ..< 60 {
//    for k in 0 ..< 60 {
//      if (String(i) + String(j) + String(k)).contains("3") {
//        count += 1
//      }
//    }
//  }
//}
//
//print(count)

// *********************
// 구현 - 상하좌우
// *********************

/*
5
R R R U D D
*/

//let spaceSize = Int(readLine()!)!
//let moveList = readLine()!.split(separator: " ").map{ String($0) }
//let moveType: [String] = ["R", "U", "L", "D"]
//var dx = [0, -1, 0, 1]
//var dy = [1, 0, -1, 0]
//var (x, y) = (1, 1)
//var (nx, ny) = (0, 0)
//
//for move in moveList {
//  for i in 0 ..< moveType.count {
//    if moveType[i] == move {
//      nx = x + dx[i]
//      ny = y + dy[i]
//    }
//  }
//  if nx < 1 || ny < 1 || nx > spaceSize || ny > spaceSize {
//    continue
//  }
//  (x, y) = (nx, ny)
//}
//
//print("\(x) \(y)")

//let spaceSize = Int(readLine()!)!
//let moveList = readLine()!.split(separator: " ").map{ String($0) }
//
//var dx = [0, -1, 0, 1]
//var dy = [1, 0, -1, 0]
//var (x, y) = (0, 0)
//
//for move in moveList {
//  switch move {
//  case "U":
//    x += dx[1]
//    y += dy[1]
//    if x < 0 || y < 0 || x >= spaceSize || y >= spaceSize {
//      x -= dx[1]
//      y -= dy[1]
//    }
//  case "D":
//    x += dx[3]
//    y += dy[3]
//    if x < 0 || y < 0 || x >= spaceSize || y >= spaceSize {
//      x += dx[3]
//      y += dy[3]
//    }
//  case "L":
//    x += dx[2]
//    y += dy[2]
//    if x < 0 || y < 0 || x >= spaceSize || y >= spaceSize {
//      x += dx[2]
//      y += dy[2]
//    }
//  case "R":
//    x += dx[0]
//    y += dy[0]
//    if x < 0 || y < 0 || x >= spaceSize || y >= spaceSize {
//      x += dx[0]
//      y += dy[0]
//    }
//  default: break
//  }
//}
//
//print("\(x + 1) \(y + 1)")


// *********************
// 구현
/*
 [동, 북, 서, 남]
 dx = [0, -1, 0, 1]
 dy = [1, 0, -1, 0]
 x, y = 2, 2
 for i in 0 ..< 4 {
  nx = x + dx[i]
  ny = y + dy[i]
 }
 print(nx, ny)
*/
// *********************

// *********************
// 그리디 4 - 모험가 길드
// *********************

//var n = Int(readLine()!)!
//var dataArray = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
//
//var result = 0
//var count = 0
//
//for i in dataArray {
//  count += 1
//  if count >= i {
//    result += 1
//    count = 0
//  }
//}
//
//print(result)

//var n = Int(readLine()!)!
//var array = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
//var arrayStartIndex = 0
//
//var possibleGroup = 0
//var groupCount = 0
//
//while true {
//  if array.count == 0 || array.count - Int(array[arrayStartIndex]) < 0 { break }
//  
//  for i in arrayStartIndex ..< array.count {
//    possibleGroup = array.filter { num in
//      array[i] >= num
//    }.count
//    if array[i] <= possibleGroup {
//      arrayStartIndex = possibleGroup - array[i]
//      array.removeFirst(array[i])
//      groupCount += 1
//      break
//    } else {
//      arrayStartIndex = possibleGroup
//    }
//    
//    if arrayStartIndex >= array.count {
//      arrayStartIndex -= 1
//      break
//    }
//  }
//}
//
//print(groupCount)

// *********************
// 그리디 3
// *********************

//var data = Array(readLine()!).map{ Int(String($0))! }
//var result = Int(data[0])
//
//for i in 1 ..< data.count {
//  let num = Int(data[i])
//  if num <= 1 || result <= 1 {
//    result += num
//  } else {
//    result *= num
//  }
//}
//
//print(result)

//var inputString = Array(readLine()!).map{ Int(String($0))! }
//var maxNum = inputString.reduce(0) { partialResult, num in
//  if (num == 0 || partialResult == 0) || (num == 1 || partialResult == 1) {
//    partialResult + num
//  } else {
//    partialResult * num
//  }
//}
//
//print(maxNum)

// *********************
// 그리디 2
// *********************

//var n = Int(readLine()!)!
//let k = Int(readLine()!)!
//var result = 0
//
//while true {
//  var target = (n / k) * k
//  result += (n - target)
//  n = target
//  if n < k { break }
//  result += 1
//  n /= k
//}
//
//result += (n - 1)
//print(result)

//var N = Int(readLine()!)!
//let K = Int(readLine()!)!
//var count = 0
//
//while true {
//  if N % K == 0 {
//    N /= K
//  } else {
//    N -= 1
//  }
//  count += 1
//  if N == 1 { break }
//}
//
//print(count)

// *********************
// 그리디 1
// *********************

//var inputTotalChangeMoney = Int(readLine()!)!
//let changeMoneyArray = [500, 100, 50, 10]
//var count = 0
//
//for changeMoney in changeMoneyArray {
//  count += inputTotalChangeMoney / changeMoney
//  inputTotalChangeMoney %= changeMoney
//  if inputTotalChangeMoney == 0 { break }
//}
//
//print(count)

// *********************
// [1268] 임시 반장 정하기
// *********************

//let studentCount = Int(readLine()!)!
//var classArray = [[Int]]()
//
//for _ in 0 ..< studentCount {
//    let row = readLine()!.split(separator: " ").map { Int($0)! }
//  classArray.append(row)
//}
//
//var equalClass = Array(repeating: 0, count: studentCount)
//
//for studentNum in 0 ..< studentCount {
//    for otherStudentNum in (studentNum + 1) ..< studentCount {
//        for grade in 0 ..< 5 {
//            if classArray[studentNum][grade] == classArray[otherStudentNum][grade] {
//                equalClass[studentNum] += 1
//                equalClass[otherStudentNum] += 1
//                break
//            }
//        }
//    }
//}
//
//if let maxCount = equalClass.max(),
//   let leaderIndex = equalClass.firstIndex(of: maxCount) {
//    print(leaderIndex + 1)
//}

//let studentCount = Int(readLine()!)!
//let classCount = 5
//var classArray = [[Int]]()
//
//var maxCount = 0
//var result = 0
//
//for _ in 0 ..< studentCount {
//  let studentClass = readLine()?.split(separator: " ").map{ Int($0)! }
//  classArray.append(studentClass!)
//}
//
//for studentNum in 0 ..< studentCount {
//  var count = 0
//  for otherStudentNum in 0 ..< studentCount {
//    if studentNum == otherStudentNum { continue }
//    for classNum in 0 ..< classCount {
//      if classArray[studentNum][classNum] == classArray[otherStudentNum][classNum] {
//        count += 1
//        break
//      }
//    }
//  }
//  
//  if count > maxCount {
//    maxCount = count
//    result = studentNum + 1
//  }
//}
//
//print(result)

//let inputInt = Int(readLine()!)!
//var numClassArray = [[Int]]()
//var countSameClassDictionary = [Int: [Int]]()
//var countSameClassArray = Array(repeating: 0, count: inputInt)
//
//for _ in 0 ..< inputInt {
//  let inputNumClassRow = readLine()?.split(separator: " ").map{ Int($0)! }
//  numClassArray.append(inputNumClassRow!)
//}
//let changedRowAndColNumArray = (0 ..< numClassArray[0].count).map { col in
//  numClassArray.map { $0[col] }
//}
//
//for (_, findSameClassArray) in changedRowAndColNumArray.enumerated() {
//  countSameClassDictionary = [:]
//  for (index, classArray) in findSameClassArray.enumerated() {
//    countSameClassDictionary[classArray, default: []].append(index)
//  }
//  let filteredCountSameClassDictionary = countSameClassDictionary.filter { $0.value.count > 1 }
//  for (sameClassArray) in filteredCountSameClassDictionary.values {
//    for array in sameClassArray {
//      countSameClassArray[array] += 1
//    }
//  }
//}
//
//let maxCountSameClass = countSameClassArray.max()
//
//for (index, array) in countSameClassArray.enumerated() {
//  if maxCountSameClass == array {
//    print(index + 1)
//    break
//  }
//}

//let inputInt = Int(readLine()!)!
//var numClass: [[Int]] = Array(repeating: [Int](), count: inputInt)
//var sameClassCountArray = Array(repeating: 0, count: inputInt)
//var tempArray = [Int]()
//
//for i in 0 ..< inputInt {
//    let inputIntArray = readLine()!.split(separator: " ").map{ Int($0)! }
//    numClass[i].append(contentsOf: inputIntArray)
//}
//
//for i in 0 ..< numClass[0].count {
//    tempArray = Array(repeating: 0, count: inputInt)
//    for j in 0 ..< inputInt {
//        tempArray.append(numClass[j][i])
//    }
//    for j in 0 ..< inputInt {
//        let sameCount = tempArray.filter { $0 == numClass[j][i] }.count
//        if sameCount > 1 {
//            sameClassCountArray[j] = sameClassCountArray[j] + sameCount - 1
//        }
//    }
//}
//
//let result = (sameClassCountArray.firstIndex(of: sameClassCountArray.max() ?? 0) ?? 0) + 1
//
//print(result)

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
