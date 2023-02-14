public class Ex18Property {
    public static func run() {
        
        print(PropertyStudent.selfIntroduction)
        var yagom: PropertyStudent = PropertyStudent()
        yagom.koreanAge = 10
        print(yagom.name)
        print(yagom.selfIntroduction)
        print("제 한국나이는 \(yagom.koreanAge)살이고, 미국나이는 \(yagom.westernAge)살 입니다.")
        
        var moneyInmyPoket = PropertyMoney()
        moneyInmyPoket.won = 11000
        moneyInmyPoket.dollar = 10
        print(moneyInmyPoket.won)
        
        var sum: Int {
            return 10 + 20
        }
        
        print(sum)
    }
}

struct PropertyStudent {
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set (inputValue){
            koreanAge = inputValue + 1
        }
    }
    
    static var typeDescription: String = "학생"
    
     var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다."
        }
    }
    
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

struct PropertyMoney {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
