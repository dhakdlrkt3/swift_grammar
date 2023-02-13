public class Ex11OptionalUnwrapping {
    public static func run () {
        printName("sara")
        
        var myName: String? = "yagom"
        var yourName: String? = nil
        
        if let name = myName, let friend = yourName {
            print("\(name) and \(friend)")
        }
        
        yourName = "hana"
        if let name = myName, let friend = yourName {
            print("\(name) and \(friend)")
        }
        
        var myName2: String? = "yagom"
        printName(myName2!)
        
    }
}

func printName (_ name: String) {
    print(name)
}
