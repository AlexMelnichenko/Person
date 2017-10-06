class Human {
    var firstName = ""
    var lastName = ""
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}


//Наследование от класса Human
class Student: Human {
     override func sayHello() -> String {
        return super.sayHello() + " my frien"
    }
}

class Kid: Human {
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName: String {
        return firstName
    }
    
    override var firstName: String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
}

let human = Human()
human.firstName = "Alex"
human.lastName = "Skizhenok"
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Bayan"
student.sayHello()

let kid = Kid()
kid.firstName = "Kid"
kid.sayHello()
kid.fullName

