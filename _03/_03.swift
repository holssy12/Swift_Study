import Foundation

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false
// someBool = 0             // C++과는 다르게, 0과 1을을 대입할 수 없고,
// someBool = 1             // 오직 true와 false만을 넣을 수 있다.

// Int
var someInt: Int = -100
// someInt = 100.1          // 마찬가지로, Int타입 변수에 Double이나
// someInt = true           // bool 값을 넣을 수 없다.

// UInt
var someUInt: UInt = 100
// someUInt = someInt       // UInt타입에 Int 값을 넣을 수 없다...

/*
    Swift는 서로 다른 데이터 타입 간 교환이 어려운 언어이다!
    
    예기지 못한 결과를 막기 위함!
 */

// Float
var someFloat: Float = 3.14
someFloat = 3               // Float에 정수를 넣는 건 가능하다.

// Double
var someDouble: Double = 3.14
// someDouble = someFloat   // Double에 Float을 넣을 순 없다. 역도 불가능.
someDouble = 3              // Float과 마찬가지로, 정수 할당은 가능.

// Character
var someCharacter: Character = "😀"      // 유니코드라 이모티콘도 가능...!
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하"                // Character이기 때문에 문자열은 불가능

// String
var someString: String = "하하하 😝 "
someString = someString + "웃으면 복이 와요"   // String + String으로 합칠 수도 있다.
print(someString)
// someString = someCharacter              // String에 Character 대입도 불가능...!




