public class Ex02Variable {
    public static func run () {
        var constant: String = "차후에 변경이 불가능한 상수 let"
        var varibale: String = "차후 에 변경이 가능한 변수 var"

        varibale = "변수는 이렇게 차후에 다른 값을 할당할 수 있습니다."
        constant = "상수는 차후에 값을 변경할 수 없습니다."

        let sum: Int
        let inputA: Int = 100
        let inputB: Int = 200

        sum = inputA + inputB

        print(sum)

    }
}
