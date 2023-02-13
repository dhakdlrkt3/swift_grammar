public class Ex04Any {
    public static func run () {
        var someAny: Any = 100
        someAny = "어떤 타입도 수용 가능합니다."
        someAny = 123.12

        //let someDouble: = someAny

        class SomeClass {}

        var someAnyObject: AnyObject = SomeClass()

        //someAnyObject = 123.12
        //someAny = nil
        //someAnyObject = nil
    }
}
