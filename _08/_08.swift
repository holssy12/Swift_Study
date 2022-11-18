// MARK: - 조건문

let someInteger = 100

// MARK: -if -else
// 소괄호 생략 가능!
// 중괄호 생략 불가능...
if (someInteger < 100) {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

/*
    Swift의 조건에는 항상 Bool 타입이 들어와야 한다.
    1 이상의 양수를 조건을 넣으면 true로 처리하는 게 아니라,
    Compile Error가 발생한다.
 */

// MARK: - switch
// 범위 연산자를 활용하면 더욱 쉽고 유용하다.
switch someInteger {
case 0:
    print("zero")
case 1..<100:           // 1 이상 100 미만.
    print("1~99")
case 100:
    print("100")
case 101...Int.max:     // 101 이상 Int.max 이하.
    print("over 100")
default:
    print("unknown")
}

// 정수 외에 대부분의 기본 타입을 사용할 수 있다.
// 정확히는 Hashable Protocol을 따르는 타입들을 사용할 수 있다.
//
// defualt는 필수!
// break를 명시적으로 해주지 않아도 알아서 걸린다.
switch "jhk" {
case "hello", "bye":    // 이중 조건.
    print("hello bye")
case "twl":
    print("twl")
    fallthrough     // 위에 이중 조건과 비슷하게,
                    // break가 걸리지 않은 것처럼 동작하여,
                    // 아래 case까지 내려간다.
case "ygl":
    print("ygl")
case "jhk":
    print("it's me")
default:
    print("unknown")
}


