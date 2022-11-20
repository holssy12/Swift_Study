/* MARK: - Optional Unwrapping */
// 1. Optional Binding
// 2. Force Unwrapping

// 일반적인 변수는 그냥 메모리 공간에 들어있는 반면,
// Optional Type 변수는 값을 보호해주는 막이 하나 있다고 생각하자.
// 만약 nil이 들어있으면, 막만 남아있는 상태!

// parameter 이름 앞에 _ 를 붙이면,
// 사용할 때 label 생략이 가능하다...
func printName(_ name: String) {
    print(name)
}

var myFirstName: String? = nil

// 전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생
// printName(name: myName)

// MARK: - Optional Binding
var mySecondName: String! = nil

if let newName: String = mySecondName {
    // printName(name: newName)
    // _ 를 붙여 label 생략이 가능하게 했기 때문에,
    // newName만 적어도 함수 호출이 잘 된다.
    printName(newName)
}
else {
    print("myName == nil")
}

// newName 상수는 if-let 구문 내에서만 사용 가능하다.
// printName(newName) // 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생

var myFourthName: String? = "jhk"
var yourName: String? = nil

// someName과 otherName 모두 nil이 아니어야만, 조건 충족! ( AND )
// yourName이 nil이기 때문에 실행되지 않는다.
if let someName = myFourthName, let otherName = yourName {
    print("\(someName) and \(otherName)")
}
else {
    print("unknown")
}

yourName = "twl"

if let someName = myFourthName, let otherName = yourName {
    print("\(someName) and \(otherName)")
}

// MARK: - Force Unwrapping
// 옵셔널의 값을 강제로 추출한다.
// 웬만하면 사용하지 말자...
// Optional Binding을 적극 이용하자!

// 뒤에 !를 붙이면, 강제 추출을 의미한다.
printName(myFourthName!)

myFourthName = nil

// printName(myFourthName!) // 강제 추출시 값이 없으므로, 런타임 오류 발생.

// 암시적 추출 옵셔널로 선언한 변수는 뒤에 !를 붙이지 않아도, 이미 강제 추출될 상황을 가정한다.
// 그래서 뒤에 !를 붙이지 않아도 전달 가능.
// printName(mySecondName) // 마찬가지로 런타임 오류 발생.


