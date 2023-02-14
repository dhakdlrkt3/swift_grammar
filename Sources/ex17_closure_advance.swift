public class Ex17ClosureAdvance {
    public static func run() {
        let add: (Int, Int) -> Int
        add = {
            (a: Int, b: Int) -> Int in
            return a + b
        }
        
        let substract: (Int, Int) -> Int
        substract = {
            (a: Int, b: Int) -> Int in
            return a - b
        }
        
        let divide: (Int, Int) -> Int
        divide = {
            (a: Int, b: Int) -> Int in
            return a / b
        }
        
        var calculated: Int
        calculated = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
            return left * right
        }
        print("후행 클로저 => \(calculated)")
        
        calculated = calculate(a: 50, b: 10, method: {
            (left: Int, right: Int) in return left * right
        })
        print("반환타입 생략 가능 => \(calculated)")
        
        calculated = calculate(a: 10, b: 10, method: {
            return $0 + $1
        })
        print("단축인자 사용 => \(calculated)")
        
        calculated = calculate(a: 10, b: 10) {
            return $0 + $1
        }
        print("후행클로저 + 단축인자 사용 => \(calculated)")
        
        calculated = calculate(a: 10, b: 10) {
            $0 + $1
        }
        print("리턴 생략 => \(calculated)")
    }
}

func closureSumFunction(a: Int, b: Int) -> Int {
    return a + b
}

func cclosureCalculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
