public class Ex07AdvanceFunc {
    public static func run() {
        greeting(friend: "hnana")
        greeting(friend: "john", me: "eric")
        
        greeting(to: "hahana", from: "uauahaom")
        sayHelloToFriends(me: "yagom", friends: "hana", "doul", "set")
        sayHelloToFriends(me: "yagom")
        someFunction("Eric", "yagom")
        someFunction = greeting(friend:me:)
        someFunction("eric", "yagom")

        runAnother(function: greeting(to:from:))
        runAnother(function: someFunction)
    }
}

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

func greeting(to friend: String, from me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

func sayHelloToFriends(me: String, friends: String...) -> Void {
    print("Hello \(friends)! I'm \(me)!")
}

var someFunction: (String, String) -> Void = greeting(to:from:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}
