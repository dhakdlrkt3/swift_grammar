public class Ex16Closure {
    public static func run() {
        var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a + b}
        
        var sumResult = sum(1,2)
        print(sumResult)
        
        sum = sumFunction(a:b:)
        print(sumResult)
        
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
        calculated = calculate(a: 50, b: 10, method: add)
        print("add => \(calculated)")
        calculated = calculate(a: 50, b: 10, method: substract)
        print("substract => \(calculated)")
        calculated = calculate(a: 50, b: 10, method: divide)
        print("divide => \(calculated)")
        calculated = calculate(a: 50, b: 10, method: {
            (left: Int, right: Int) -> Int in return left * right
        })
        print("closer => \(calculated)")
    }
}

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
