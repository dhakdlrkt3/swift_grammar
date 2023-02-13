

public class Ex06BasicFunc {
    public static func run() {
        let result = sum(a: 10, b: 20)
        print("result => \(result)")
    }
}

func sum (a: Int, b: Int) -> Int {
    return a + b
}

func printMyName (name: String) -> Void {
    print(name)
}
