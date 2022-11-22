/* MARK: - 클로저 */

/*
    코드의 블럭
    일급 시민(first-citizen)
    변수, 상수 등으로 저장, 전달인자로 전달이 가능
 
    함수 : 이름이 있는 클로저
 */

// MARK: - 정의
//    { (매개변수 목록) -> 반환타입 in
//     실행 코드
//    }


// 함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult)


// 클로저를 사용한다면
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum(2, 3)
print(sumResult)


// 함수는 클로저의 일종이므로
// sum 변수에는 당연히 함수도 할당할 수 있다.
sum = sumFunction(a:b:)
sumResult = sum(3, 4)
print(sumResult)


// MARK: - 함수의 전달인자로서의 클로저
// 클로저는 함수의 전달인자로 주로 사용된다.
// 함수의 동작 완료 후 실행할 코드를 원할 때 많이 사용된다.
//  ---> 이를 콜백( Callback )이라 한다.

let add: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

// 선언 후 나중에 할당 가능.
let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int ) -> Int {
    return method(a, b)
}

var calResult: Int

calResult = calculate(a: 10, b: 10, method: add)
print(calResult)
calResult = calculate(a: 10, b: 10, method: substract)
print(calResult)
calResult = calculate(a: 10, b: 10, method: divide)
print(calResult)

// 따로 클로저를 let/var에 넣어 전달하지 않고,
// 함수 호출 시, 코드 블록을 작성하여 전달해도 된다.
calResult = calculate(a: 10, b: 10, method: { (a: Int, b: Int) -> Int in
    return a * b
})
print(calResult)

