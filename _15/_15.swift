/* MARK: - class vs struct vs enum*/

/*
 class
     1. 전동적인 OOP 관점에서의 클래스
     2. 단일 상속
     3. 참조 타입
     4. Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성
 
 struct
     1. 다른 언어의 구조체보다 다양한 기능
     2. 상속 불가
     3. 값 타입
     4. Swift의 대부분의 큰 뼈대는 모두 구조체로 구성
 
 enum
     1. 다른 언어의 열거형과는 많이 다른 존재
     2. 상속 불가
     3. 값 타입
     4. 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의할 때 쓰인다.
     5. 열거형 자체가 하나의 데이터 타입이며,
        열거형의 case 하나하나 전부 유의미한 값으로 취급된다.
 */

/*
 구조체는 언제 사용하나?
    ---> 참조가 아닌 복사를 원할 때
    ---> 상속이 필요없을 때
 */

/*
 Value : 데이터를 전달할 때 값을 복사하여 전달
    vs
 Reference : 데이터를 전달할 때 값의 메모리 위치를 전달
 */


/*
 Swift의 데이터 타입 대부분은 구조체로 구성되어 있다.
 Swift는 구조체, 열거형 사용을 선호.
 
 Apple 프레임워크는 대부분 클래스를 사용.
 Apple 프레임워크 사용시 구조체/클래스 선택은 개발자의 몫이다.
*/

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫 번째 구조체 인스턴스
let firstStructInstance = ValueType()

// 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
var secondStructInstance = firstStructInstance

// 두 번째 구조체 인스턴스 프로퍼티 값 수정
secondStructInstance.property = 2

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한
// 별도의 인스턴스이기 때문에,
// 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
// 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없다.
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2


// 클래스 인스턴스 생성 후 첫 번째 참조 생성
let firstClassReference = ReferenceType()
// 두 번째 참조 변수에 첫 번째 참조 할당
let secondClassReference = firstClassReference
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
// 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
// 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 된다.
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2

