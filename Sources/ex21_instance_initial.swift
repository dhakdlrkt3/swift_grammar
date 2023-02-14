public class Ex21InstanceInitial {
    public static func run() {
        let hana: InheritancePersonB = InheritancePersonB(name: "hana", age: 20, nickName: "하나")
        let jenny: InheritancePersonC = InheritancePersonC(name: "jenny", age: 10)
        let mike: InheritancePersonC = InheritancePersonC(name: "mike", age: 15, nickName: "m")
        
        let happy: InheritancePuppy = InheritancePuppy(name: "happy")
        happy.owner = jenny
        happy.goOut()
        
        
        let john: InheritancePersonD? = InheritancePersonD(name: "john", age: 23)
        let joker: InheritancePersonD? = InheritancePersonD(name: "joker", age: 123)
        let batman: InheritancePersonD? = InheritancePersonD(name: "", age: 10)
        print(john?.name)
        print(joker)
        print(batman)
        
        var donald: InheritancePersonE? = InheritancePersonE(name: "donald", child: jenny)
        donald?.pet = happy
        donald = nil
    }
}

class InheritancePersonB {
    var name: String
    var age: Int
    var nickName: String
    
    init(name:String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

class InheritancePersonC {
    var name: String
    var age: Int
    var nickName: String?
    
    convenience init(name:String, age: Int, nickName: String) {
        self.init(name:name, age: age)
        self.nickName = nickName
    }
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
}

class InheritancePersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name:String, age: Int) {
        if(0...120).contains(age) == false {
            return nil
        }

        if name.count == 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}

class InheritancePersonE {
    var name: String
    var pet: InheritancePuppy?
    var child: InheritancePersonC
    
    init(name: String, child: InheritancePersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 양도합니다.")
            self.pet?.owner = child
        }
    }
}

class InheritancePuppy {
    var name: String
    var owner: InheritancePersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다.")
    }
}
