public class Ex22OptionalChainning {
    public static func run() {
        let yagom: ChainningPerson? = ChainningPerson(name: "yagom")
        let apart: ChainningApartment? = ChainningApartment(dong: "101", ho: "202")
        let superman: ChainningPerson? = ChainningPerson(name: "superman")
        
        print(yagom?.home?.guard?.job)
        print(yagom?.home)
        print(yagom?.name)
        
        
        var guardJob: String
        guardJob = yagom?.home?.guard?.job ?? "슈퍼맨맨"
        print(guardJob)
    }
    
    class func guardJobWithOptionalChaining(owner: ChainningPerson?) {
        if let guardJob = owner?.home?.guard?.job {
            print("우리집 경비원의 직업은 \(guardJob)입니다.")
        } else {
            print("우리집 경비원은 직업이 없어요")
        }
    }
}

class ChainningPerson {
    var name: String
    var job: String?
    var home: ChainningApartment?
    
    init(name: String) {
        self.name = name
    }
}

class ChainningApartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: ChainningPerson?
    var owner: ChainningPerson?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}
