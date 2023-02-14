public class Ex20Inheritance {
    public static func run() {
        let yagom: InheritancePerson = InheritancePerson()
        let hana: InheritanceStudent = InheritanceStudent()
        
        yagom.name = "yagom"
        hana.name = "hana"
        hana.major = "Swift"
        
        yagom.selfIntroduce()
        hana.selfIntroduce()
        InheritancePerson.classMethod()
        InheritanceStudent.classMethod()
    }
}

class InheritancePerson {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name) 입니다.")
    }
    
    //재정의 불가
    final func sayHello() {
        print("hello")
    }
    
    //재정의 불가
    static func typeMethod() {
        print("type method - static")
    }
    //자식클래스에서 재정의 가능
    class func classMethod() {
        print ("type method - class")
    }
    //재정의 불가
    final class func finalClassMethod() {
        print("typemethod - final class")
    }
 }

class InheritanceStudent: InheritancePerson {
    var major: String = ""
    
    override func selfIntroduce () {
        print("저는 \(name)이고 전공은 \(major) 입니다.")
        super.selfIntroduce()
    }
    
    override class func classMethod () {
        print("override type method - class")
    }
 }
