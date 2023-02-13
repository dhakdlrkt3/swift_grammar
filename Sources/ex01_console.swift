public class Ex01Console {
    public static func run () {
        let greeting = "Hello, playground"

        print(greeting)
        print("\n###########################\n")

        class Person {
            var name: String = "yagom"
            var age: Int = 10
        }

        let yagom: Person = Person()

        print(yagom.name)
        print(yagom.age)
        print("\n###########################\n")

        dump(yagom)
    }
}
