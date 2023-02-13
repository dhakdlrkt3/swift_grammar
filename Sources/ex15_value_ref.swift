public class Ex15ValueRef {
    public static func run () {
        let firstStruct = ValueType()
        var secondStruct = firstStruct
        secondStruct.property = 2
        
        print("first struct => \(firstStruct.property)")
        print("second struct => \(secondStruct.property)")
        
        let firstClass = ReferenceType()
        var secondClass = firstClass
        secondClass.property = 2
        
        print("first class => \(firstClass.property)")
        print("second class => \(secondClass.property)")
    }
}

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}
