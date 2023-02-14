public class Ex19PropertyWatcher {
    public static func run() {
        var mymoney = WatcherMoney()
        mymoney.currencyRate = 1150
        
        mymoney.dollar = 10
        
        print(mymoney.won)
        
        
        var sum: Int = 100 {
            willSet {
                print("값이 \(sum)에서 \(newValue)로 변경될 예정입니다.")
            }
            didSet {
                print("값이 \(sum)에서 \(oldValue)로 변경되었습니다.")
            }
        }
        
        sum = 200
        
        print(sum)
    }
}

struct WatcherMoney {
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정입니다.")
        }
        didSet(oldRate) {
            print("환율이 \(currencyRate)에서 \(oldRate)로 변경되었습니다.")
        }
    }
    var dollar: Double = 0 {
        willSet {
            print("환율이 \(currencyRate)에서 \(newValue)로 변경될 예정입니다.")
        }
        didSet {
            print("환율이 \(currencyRate)에서 \(oldValue)로 변경되었습니다.")
        }
    }
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
