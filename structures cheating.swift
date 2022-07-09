class Human{
    var age: Int
    var name: String
    
    init(age:Int, name:String){
        self.age = age
        self.name = name
    }
    
}

let human = Human(age:20, name:"Maria")
human.age = 30 //константы в объектах можно изменять
human.age

var human3 = Human(age: 50, name: "Stas")

human3.age
human3.name

human3 = human

human3.age = 60
human3.name = "Vitalik"

human.age
human.name

struct Human_1 { // в струкрурах не нужен иницилизатор
    var age: Int
    var name: String
}
var human_1 = Human_1(age: 25, name: "Olya")
human_1.age = 36 //константы в структурах нельзя изменять
human_1.age

// value type - Int, Boolean, String, structures
//reference type - enum, class

var human2 = Human_1(age: 30, name: "Yulia")

human2.age
human2.name

human2 = human_1
human2.age = 45
human2.name = "Veronika"

human2.age
human2.name

human_1.age
human_1.name



struct Person{
    var name: String
    
    mutating func makeAnonymus(){ // mutating нужен для изменения свойства структуры
        name = "Anonymus"
    }
}

