public class Ex14Enum{
    public static func run () {
        var day: Weekday = Weekday.mon
        day = .tue
        
        print(day)
        
        switch day {
        case .mon, .tue, .wed, .thu:
            print("평일입니다.")
        case .fri:
            print("불금입니다")
        case .sat, .sun:
            print("주말입니다.")
        }
        
        print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
        
        print("School.middle.rawValue == \(School.middle.rawValue)")
        
        print("School.university.rawValue == \(School.university.rawValue)")
        
        let apple: Fruit? = Fruit(rawValue: 0)
        
        if let orange: Fruit = Fruit(rawValue: 5) {
            print("rawValue 5에 대한 케이스는 \(orange)입니다.")
        } else {
            print("rawValue 5에 대한 케이스가 없습니다.")
        }
        
        Month.mar.printMessage()
    }
}

enum Weekday {
    case mon
    case tue
    case wed
    case thu,fri,sat,sun
}

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
}

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage () {
        switch self {
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}
