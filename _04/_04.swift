// Any, AnyObject, nil

/*
    Any - Swift의 모든 타입을 지칭하는 키워드
    AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
    nil - 없음을 의미하는 키워드
 */

import Foundation

// MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// 타입이 정해진 변수에 Any 변수 값을 넣을 수는 없다?
// let someDouble: Double = someAny

// MARK: - AnyObject
class SomeClass {}
var SomeAnyObject: AnyObject = SomeClass()
// SomeAnyObject = 123.12   // 당연히 불가능..

// MARK: - nil
//  == null. 아무 것도 없다는 의미.
// someAny = nil        // Any타입이라도, nil을 할당할 수는 없다.
// someAnyObject = nill // 불가능.


