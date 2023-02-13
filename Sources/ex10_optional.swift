public class Ex10Optional {
    public static func run() {
        someFunction(someOptionalParam: nil)
        someFunction(someOptionalParam: 30)
        someFunction(someParam: 10)
    }
}

func someFunction (someOptionalParam: Int?) {
    switch someOptionalParam {
    case .none:
        print("optional none value")
    case .some(let wrapped):
        print("wrapped => \(wrapped)")
    }
}
func someFunction (someParam: Int) {
    //
}
