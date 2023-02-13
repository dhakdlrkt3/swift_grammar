public class Ex05CollectionType {
    public static func run () {
        var integers: Array<Int> = Array<Int>()
        integers.append(1)
        integers.append(100)


        integers.contains(100)
        integers.contains(99)

        integers.remove(at: 0)
        integers.removeLast()
        integers.removeAll()
        integers.count

        var doubles: Array<Double> = [Double]()

        var strings: [String] = [String]()
        var characters: [Character] = []

        // let immutableArray: [Int] = [1,2,3]
        // immutableArray.append(30)
        
        
        var anyDictionary: Dictionary<String, Any> = [String: Any]()
        anyDictionary["someKey"] = "value"
        anyDictionary["anotherKey"] = 100
        
        dump("anyDictionary => \(anyDictionary)")
        
        anyDictionary.removeValue(forKey: "anotherKey")

        dump("anyDictionary => \(anyDictionary)")

        anyDictionary["someKey"] = nil

        dump("anyDictionary => \(anyDictionary)")

        let emptyDictionary: [String: String] = [:]
        let inializedDictionary: [String: String] = ["name" : "yoojae", "gender": "male"]

        let someValue: String = inializedDictionary["name"]!

        var integerSet: Set<Int> = Set<Int> ()
        integers.insert(1, at: 0)
        integers.insert(100, at: 1)
        integers.insert(99, at: 2)
        integers.insert(99, at:3)
        integers.insert(99, at: 4)

        integers.contains(100)
        integers.count

        let setA: Set<Int> = [1,2,3,4,5]
        let setB: Set<Int> = [3,5,6,7,8]

        let union: Set<Int> = setA.union(setB)
        let sortedUnion: [Int] = union.sorted()
        
        let intersection: Set<Int> = setA.intersection(setB)
        let subtraction: Set<Int> = setA.intersection(setB)
    }
}
