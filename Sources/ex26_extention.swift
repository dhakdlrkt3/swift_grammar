import Foundation

public class Ex26Extention {
    public static func run() {
        extension Int {
            var isEven: Bool {
                return self % 2 == 0
            }
            var isOdd: Bool {
                return self % 2 == 1
            }
        }

        print(1.isEven) // false
        print(2.isEven) // true
        print(1.isOdd)  // true
        print(2.isOdd)  // false

        var number: Int = 3
        print(number.isEven) // false
        print(number.isOdd) // true

        number = 2
        print(number.isEven) // true
        print(number.isOdd) // false
        
        extension Int {
            func multiply(by n: Int) -> Int {
                return self * n
            }
        }
        print(3.multiply(by: 2))  // 6
        print(4.multiply(by: 5))  // 20

        number = 3
        print(number.multiply(by: 2))   // 6
        print(number.multiply(by: 3))   // 9
        
        extension String {
            init(int: Int) {
                self = "\(int)"
            }
            
            init(double: Double) {
                self = "\(double)"
            }
        }

        let stringFromInt: String = String(int: 100)
        // "100"

        let stringFromDouble: String = String(double: 100.0)
        // "100.0"
    }
}
