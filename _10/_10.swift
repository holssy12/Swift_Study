/* MARK: - optional */
// 값이 있을 수도, 없을 수도 있음을 나타낸다.
// 장점:
//  1. nil 가능성을 문서화하지 않고 코드만으로 충분히 표현 가능.
//  2. 전달받은 값이 optional이 아니라면, nil 체크 없이 안심하고 사용 가능.

// optinal이 아닌데 nil을 할당하려 하면 오류가 발생한다.
// let someConstant: Int = nil
let someConstant: Int? = nil

func someFunction(someOptinalParam: Int?) {}
func someFunction(someParam: Int) {}

someFunction(someOptinalParam: nil)
// someFunction(someParam: nil)

// Optinal은 enum과 general을 합쳐서 만든 것이다.
//  ---> Definition 참고!
let firstOptionalValue: Optional<Int> = nil
let secondOptionalValue: Int? = nil

// MARK: - ! : 암시적 추출 옵셔널 (Implicitly Unwrapped Optional)
// 개발자를 믿고, nil이 아닐 때만 연산할 거라 생각하여 오류를 무작정 띄우지 않는다.
var thirdOptionalValue: Int! = 100
switch thirdOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
// 기존 변수처럼 사용 가능
thirdOptionalValue = thirdOptionalValue + 1
// nil 할당 가능
thirdOptionalValue = nil
// 잘못된 접근으로 인한 런타임 오류 발생
// thirdOptionalValue = thirdOptionalValue + 1

// MARK: - ?
// 일반적인 Optional.
// 개발자를 믿지 않고, 확실한 연산만 가능하게 만들기 때문에 오류를 더 많이 띄워준다.
var fourthOptinalValue: Int? = 100
switch fourthOptinalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
// nil 할당 가능
fourthOptinalValue = nil
// 기존 변수처럼 사용불가 - Optional과 일반 값은 다른 타입이므로 연산불가.
fourthOptinalValue = fourthOptinalValue + 1

