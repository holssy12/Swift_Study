/* MARK: - 반복문 */

var integers = [1, 2, 3]
let people = ["jhk": 10, "eirc": 15, "mike": 12]

// MARK: - for-in

for i in integers {
    print(i)
}

// Dictionary의 item은 key와 value로 구성된 Tuple Type이다.
for (name, age) in people {
    print("\(name): \(age)")
}

// MARK: - while
while (integers.count > 1) {
    integers.removeLast()
    print(integers)
}

// MARK: - repeat-while
// 다른 언어의 do while 문과 비슷.
// swift에서 do를 쓰지 않는 이유는 do가 오류처리문에서 사용되기 때문이다.

repeat {
    integers.removeLast()
    print(integers)
} while integers.count > 0

