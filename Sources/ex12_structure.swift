public class Ex12Structure {
    public static func run () {
        var mutable: StructSample = StructSample()
        mutable.mutableProperty = 200
        
        let immutable: StructSample = StructSample()
        
        StructSample.typeProperty = 30
        StructSample.typeMethod()
        
        
        StructStudent.selfIntroduce()
        
        var yagom: StructStudent = StructStudent()
        yagom.name = "yagom"
        yagom.class = "스위프트"
        yagom.selfIntroduce()
        
        let jina: StructStudent = StructStudent()
        
        jina.selfIntroduce()
    }
}


struct StructSample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    
    static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod(){
        print("type method")
    }
}

struct StructStudent {
    var name: String = "unknown"
    var `class`: String = "Swift" //class 키워드 사용
    
    static func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce () {
        print("저는 \(self.class)반 \(name)입니다.")
    }
 }
