/* MARK: - 열거형 */

// Swfit의 열거형은  자동으로 정수를 할당해주지 않는다.
// enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의한다.
// 각 case는 소문자 카멜케이스로 정의한다.
// 각 case는 그 자체가 고유의 값이다.


// MARK: - 열거형 사용

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun // 한 줄에 여러개의 case를 구성해도 된다.
}

// 열거형 타입과 케이스를 모두 사용하여도 된다.
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 로 사용해도 된다.
day = .tue
//var nextDay = .tue // 컴파일러가 알 수 없어 오류 발생.

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때,
// 모든 열거형 케이스를 포함한다면
// default를 작성할 필요가 없다!
//  ---> 하지만, 하나라도 빠져있다면 당연히 default가 필요하다.
switch day {
case .mon, .tue, .wed, .thu: // 이 중에 하나라도 포함되면 조건 충족.
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}


// MARK: - 원시값
// C언어의 enum처럼 정수값을 가질 수 있는데,
// rawValue를 사용하면 된다.
// case별로 각각 다른 값을 가져야 한다.

// Int 타입을 주게 되면 C언어처럼 숫자를 적지 않아도 apple == 0에서 시작해, 1,2,.. 순으로 증가하며,
// apple = 1을 할당하면 2, 3,... 순으로 증가한다.
enum Fruit: Int {
    case apple = 2
    case grape
    case peach
    
    // mango와 apple의 원시값이 같으므로
    // mango 케이스의 원시값을 0으로 정의할 수 없다.
    //case mango = 0
}

// rawValue를 통해 원시값을 꺼내온다.
print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2


// 정수 타입 뿐만 아니라,
// Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
// School.middle.rawValue == 중등

// 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면
// case의 이름을 원시값으로 사용한다.
print("School.university.rawValue == \(School.university.rawValue)")
// School.middle.rawValue == university


// MARK: - 원시값을 통한 초기화

// rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로, Fruit 타입이 아니다.
//  ---> case가 존재하지 않는 경우가 나올 수 있기 때문!
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있다.
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다


// MARK: - 매서드
// Swift의 열거형에는 매서드도 추가할 수 있다.
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
        
    // 매서드
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름은 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()

