/*
 MARK: - Collection Types
 
 1. Array - 순서가 있는 리스트 컬렉션
 2. Ditionary - 키와 값의 쌍으로 이루어진 컬렉션
 3. Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

// MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>() // [] : 빈 Array 생성.

// append : element 추가.
integers.append(1)      // [1]
integers.append(100)    // [1, 100]

// contains : 해당 element가 있는가?
integers.contains(100)  // true
integers.contains(99)   // false

integers.remove(at: 0)  // index 0번 element 삭제
integers.removeLast()   // 마지막 element 삭제
integers.removeAll()    // 전부 삭제

integers.count  // Array의 elements 개수.

// print(integers[0])   // 현재 element가 없으므로, 오류 발생

// MARK: Array<Type> == [Type]. 동일한 표현이다.

// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// []는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

// immutableArray.append(4)     // let이기 때문에 append 불가능.
// immutableArray.removeAll()   // 마찬가지로 remove도 불가능.

// MARK: - Dictionary
// Key가 String 타입이고, Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String : Any]()

// Dictonary에 element 추가하기.
anyDictionary["firstKey"] = "value"
anyDictionary["secondKey"] = 100
print(anyDictionary)

anyDictionary["secondKey"] = "changed"
print(anyDictionary)

// Dictonary element 삭제 방법 2가지.
anyDictionary.removeValue(forKey: "firstKey")
anyDictionary["secondKey"] = nil
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name":"jhk", "gender":"male"]
 
// Dictionary에서 key에 해당하는 값이 있을 수도, 없을 수도 있기 때문에
// optional 사용 없이 할당할 수 없다.
let someValue: String? = initializedDictionary["name"]

// MARK: - Set
// 중복된 element가 없도록 만들어준다!
// 저장된 순서는 뒤죽박죽이다.
// Set는 축약 문법이 없다!

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet) // 99가 1개만 들어있는 걸 확인할 수 있다.
                  // 저장된 순서는 뒤죽박죽이다...
integerSet.contains(1)
print(integerSet.contains(2))

integerSet.remove(100)
integerSet.removeFirst()

print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// union : 합집합을 만들어준다.
let uniSet: Set<Int> = setA.union(setB)
print(uniSet)

// sorted : 정렬된 * 배열 *을 만들어준다.
let sortedUniArr: [Int] = uniSet.sorted()
print(sortedUniArr)

// intersection : 교집합을 만들어준다.
let intersectedSet: Set<Int> = setA.intersection(setB)
print(intersectedSet)

// subtracting : 차집합을 만들어준다.
let subtractedSet: Set<Int> = setA.subtracting(setB)
print(subtractedSet)

