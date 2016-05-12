//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Pet{

    init(){}
    
    func makeSound() -> String{
        return "Pet Noise!"
    };

}


class Dog : Pet {
    
    var name: String
    var breed: String
    var color: String
    var age: Int
    
    
    init(name: String,breed: String,color: String,age: Int){
        self.name = name;
        self.breed = breed;
        self.color = color;
        self.age = age;
    }
    
    deinit{
        
        print("\(name) is deinitialized")
}
    
    override func makeSound() -> String{
        return "Woof! Woof!"
    }

}

var dog1 = Dog(name: "King", breed: "Pit" , color: "black", age: 2)

dog1.makeSound()


class Cat : Pet {
    
    var name: String
    var breed: String
    var color: String
    var age: Int
    
    init(name: String,breed: String,color: String,age: Int){
    self.name = name;
    self.breed = breed;
    self.color = color;
    self.age = age;
    }
    
    deinit{
    
    print("\(name) is deinitialized")
}
    
    override func makeSound() -> String{
        return "Meow! Meow!"
    }

}


var cat1 = Cat(name: "Garfield", breed: "tabby cat", color: "Orange", age: 1)

cat1.makeSound()
