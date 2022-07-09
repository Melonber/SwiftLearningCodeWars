class Human{
    var age: Int
    var name: String
    var isQualified: Bool
    var status: String{
        get{
        if(isQualified==true){  //вычисляемое свойство(не хранит значение, а вычисляет)
            return "\(name) is quolified for thos job"
        } else{
            return "\(name) is not quolified for this job"
        }
        }
    }
    func move(){
        print("\(name) is moving")
    }
    
    init(age:Int,name:String, isQualified: Bool){
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
}


class Account{
    var sum: Double{ //сумма вклада
        willSet (NewSum){
            print("Previous sum: \(self.sum) / New sum: \(NewSum)")
        }
        didSet(oldSum){
            print("Sum increased by: \(self.sum-oldSum)")

        }
    }
    var rate: Double = 0.01 //процентная ставка
    
    var profit: Double{
        get{ // возвращает результат арефмитических операций
            return sum+sum*rate
        }
        set{ // обратная связь между суммой прибыли и суммой вклада
            self.sum = newValue / (1+rate)
        }
    }
    
    init(sum: Double, rate: Double){
        self.sum = sum
        self.rate = rate
    }
}


var myAcc: Account = Account(sum: 1000, rate: 0.1)
print (myAcc.profit)

//ожидаемая прибыль
myAcc.profit = 2000

//необходнимя сумма вклада для получения этой прибыли
print(myAcc.sum)


//var aydyn = Human(age: 32, name: "Aydyn", isQualified: true)

//aydyn.status
