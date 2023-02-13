public class Ex13Class {
    public static func run () {
        var mutableRef: ClassSample = ClassSample()
        
        mutableRef.mutableProperty = 200
        
        let immutableRef: ClassSample = ClassSample()
        immutableRef.mutableProperty = 200
        
        ClassStudent.selfIntroduce()
        
        var yagom: ClassStudent = ClassStudent()
        yagom.name = "yagom"
        yagom.class = "스위프트"
        yagom.selfIntroduce()
        
        let jina: ClassStudent = ClassStudent()
        jina.name = "nana"
        jina.selfIntroduce()
    }
}


class ClassSample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    
    static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    //재정의 불가 타입 메서드 - static
    static func typeMethod(){
        print("type method - static")
    }
    
    //재정의 가능 타입 메서드 -class
    class func classMethod(){
        print("class method - class")
    }
}

class ClassStudent {
    var name: String = "unknown"
    var `class`: String = "Swift" //class 키워드랑 겹치는 걸 피하기 위한 ``이다
    
    static func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    func selfIntroduce () {
        print("저는 \(self.class)반 \(name)입니다.")
    }
 }
