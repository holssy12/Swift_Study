/*
    함수
 */

// MARK: - 함수의 선언

// MARK: - 함수 선언의 기본 형태
// func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ... ) -> 반환타입 {
//      함수 구현부
//      return 반환값
// }
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// MARK: - 반환 값이 없는 함수
// 반환타입을 Void로 명시해주거나,
// 반환타입에 아무것도 넣지 않으면 된다.
func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

// MARK: - 매개변수가 없는 함수
func maximumIntegerValue() -> Int {
    return Int.max
}

// MARK: - 매개변수와 반환값이 없는 함수
func hello() -> Void { print("hello") }

func bye() { print("bye") }

// MARK: - 함수의 호출
print(sum(a: 3, b: 5))

printMyName(name: "jhk")
printYourName(name: "ygl")

print(maximumIntegerValue())

hello()
bye()

