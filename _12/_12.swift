/* MARK: - 구조체 */

// MARK: - 프로퍼티 및 메서드
// Property : 구조체 안에 들어가는 변수.
// Method : 구조체 안에 들어가는 함수.

struct Sample {
    // 가변 프로퍼티와 불변 프로퍼티는 인스턴스 프로퍼티이다.
    
    // 가변 프로퍼티(값 변경 가능)
    var mutableProperty: Int = 100
    
    // 불변 프로퍼티(값 변경 불가능)
    let immutableProperty: Int = 100
    
    // 타입 프로퍼티(static 키워드 사용 : 타입 자체가 사용하는 프로퍼티)
    static var typeProperty: Int = 100
    
    // 인스턴스 메서드(인스턴스가 사용하는 메서드)
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드(static 키워드 사용 : 타입 자체가 사용하는 메서드)
    static func typeMethod() {
        print("type method")
    }
}

// MARK: - 구조체 사용
// 가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 200
// mutable.immutableProperty = 200 // 가변 인스턴스라도, 불변 프로퍼티는 바꿀 수 없다.

// 불변 인스턴스
let immutable: Sample = Sample()
// 불변 인스턴스는 모든 프로퍼티를 바꿀 수 없다.
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod()

// 타입 자체로만 사용 가능하며, 인스터스는 사용 불가능하다.
//mutable.typeProperty = 300
//mutable.typeMethod()

// MARK: - 학생 구조체
struct Student {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있다.
    var `class`: String = "Swift"
    
    // 타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var jhk: Student = Student()
jhk.name = "김정현"
jhk.class = "스위프트"
jhk.selfIntroduce() // 인스턴스 매서드

// 불변 인스턴스 생성
let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
//jina.name = "jina" // 컴파일 오류 발생

jina.selfIntroduce() // 저는 Swift반 unknown입니다

