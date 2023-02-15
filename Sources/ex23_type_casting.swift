public class Ex23TypeCasting {
    public static func run() {
        let someInt: Int = 100
        let someDouble: Double = Double(someInt)
        
        var yagom = TypeCastingPerson()
        var hana = TypeCastingStudent()
        var jason = TypeCastingUniversityStudent()
        
        var result: Bool
        
        result = yagom is TypeCastingPerson // true
        result = yagom is TypeCastingStudent // false
        result = yagom is TypeCastingUniversityStudent // false
        
        result = hana is TypeCastingPerson // true
        result = hana is TypeCastingStudent // true
        result = hana is TypeCastingUniversityStudent // false
        
        result = jason is TypeCastingPerson // true
        result = jason is TypeCastingStudent // true
        result = jason is TypeCastingUniversityStudent // true
        
        if yagom is TypeCastingUniversityStudent {
            print("yagom은 대학생")
        }else if yagom is TypeCastingStudent {
            print("yagom은 학생")
        } else if yagom is TypeCastingPerson {
            print("yagom은 사람")
        }
    }
   
}

class TypeCastingPerson {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다.")
    }
}

class TypeCastingStudent: TypeCastingPerson {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다.")
    }
}

class TypeCastingUniversityStudent: TypeCastingStudent {
    var major: String = ""
    func goToMT() {
        print("MT를 갑니다.")
    }
}
