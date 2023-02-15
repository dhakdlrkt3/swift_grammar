import Foundation

public class Ex28HigherOrderFunction {
    public static func run() {
        let numbers: [Int] = [0, 1, 2, 3, 4]
        var doubledNumbers: [Int]
        var strings: [String]

        doubledNumbers = [Int]()
        strings = [String]()

        for number in numbers {
            doubledNumbers.append(number * 2)
            strings.append("\(number)")
        }

        print(doubledNumbers) // [0, 2, 4, 6, 8]
        print(strings) // ["0", "1", "2", "3", "4"]
        
        // numbers의 각 요소를 2배하여 새로운 배열 반환
        doubledNumbers = numbers.map({ (number: Int) -> Int in
            return number * 2
        })

        // numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
        strings = numbers.map({ (number: Int) -> String in
            return "\(number)"
        })

        print(doubledNumbers) // [0, 2, 4, 6, 8]
        print(strings) // ["0", "1", "2", "3", "4"]

        // 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
        doubledNumbers = numbers.map { $0 * 2 }
        print(doubledNumbers) // [0, 2, 4, 6, 8]
        
        var filtered: [Int] = [Int]()

        for number in numbers {
            if number % 2 == 0 {
                filtered.append(number)
            }
        }

        print(filtered) // [0, 2, 4]
        
        // numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
        let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
            return number % 2 == 0
        }
        print(evenNumbers) // [0, 2, 4]

        // 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
        let oddNumbers: [Int] = numbers.filter {
            $0 % 2 != 0
        }
        print(oddNumbers) // [1, 3]
        
        let someNumbers: [Int] = [2, 8, 15]
        
        // 변수 사용에 주목하세요
        var result: Int = 0

        // someNumbers의 모든 요소를 더합니다
        for number in someNumbers {
            result += number
        }

        print(result) // 25
        
        // 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
        let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
            //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
            return first + second
        })

        print(sum)  // 25

        // 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
        var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
            //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
            return first - second
        })

        print(subtract) // -25

        // 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
        let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

        print(sumFromThree) // 28
    }
}
