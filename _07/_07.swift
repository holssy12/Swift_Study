/* MARK: - 매개변수 기본값 */

// 기본값을 갖는 매개변수는 뒤쪽에 위치하는 것이 좋다.
func greeting(frined: String, me: String = "jhk") {
    print("Hello \(frined)! I am \(me)")
}

// default parameter를 갖는 매개변수는 생략 가능.
greeting(frined: "haha")
greeting(frined: "lady", me: "twl")

// MARK: - 전달인자 레이블
// 전달인자 레이블은 함수를 호출할 때,
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용한다.
//
// to, from이 추가되었기 때문에,
// Swift에서는 위에 greeting 함수와 아래 greeting 함수는
// 서로 다른 함수로 구별된다.
//
// 함수 내부에서는 매개변수는 이름으로 사용되지만,
// 호출 시에는 전달인자 레이블을 사용해야 한다.
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

greeting(to: "ygl", from: "twl")

// MARK: - 가변 매개변수
// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다.
// 가변 매개변수는 함수당 *하나*만 가질 수 있다.
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! My name is \(me)"
}

print(sayHelloToFriends(me: "jhk", friends: "david", "martinez", "lucy"))

// 가변 인자에 아무 값도 넣어주고 싶지 않으면, 생략하면 된다.
// friends: or frineds: nil 이라고 주게 되면, 오류 발생.
print(sayHelloToFriends(me: "jhk"))

/*
    위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능하다.
 */

// MARK: - 데이터 타입으로서의 함수
// Swift는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다.
// Swift의 함수는 일급 객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있다.
//
// 일급 객체 (First-class Object)
// ---> 일급객체란 다른 객체들에 일반적으로 적용 가능한 연산을 모두 지원하는 객체를 가리킨다.
// 1. 변수에 할당(assignment)할 수 있다.
// 2. 다른 함수를 인자(argument)로 전달 받는다.
// 3. 다른 함수의 결과로서 리턴될 수 있다.

// MARK: - 함수의 타입 표현
// 반환타입을 생략할 수 없다.
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

// someFunction : 매개변수1과 2는 String 타입이고, 반환타입이 Void인 함수가 들어올 것이다.
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "jhk")

// someFunction은 var이기 때문에, 새로운 함수 할당 가능.
// 당연히 타입이 다른 함수는 할당할 수 없다.
someFunction = greeting(frined:me:)
someFunction("eric", "jhk")

// 함수 타입을 매개변수 타입으로 지정 가능.
// runAnother의 매개변수는 함수이고, 그 함수는 String 타입 2개의 매개변수를 가지고 반환타입은 Void이다.
func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(to:from:))
runAnother(function: greeting(frined:me:))

