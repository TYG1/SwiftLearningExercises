//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Dog {
    
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
    
    
    
    convenience init(breed: String,age: Int){
        
        self.init( name: "Clifford",breed: breed, color: "red", age: age)
    }
    
    
    
    //Property Obeserver
    var yearsOwned: Int = 0 {
        willSet(newYearsOwned){
            print("About to set years owned to \(newYearsOwned)")
        }
        didSet {
            if (age >= yearsOwned){
                print("\(name) was purchased when he was \(age - yearsOwned)")
            }
        }
    }
    
    
    // Computed Property
    var agePurchased: Int {
        return age - yearsOwned;
        
    }
    
    
    func ageInHumanYears() -> Int {
        return age*7;
    }
    
    func barking() -> String {
        return "woof!, woof!"
    }
    
    func eating(food: String) -> String {
        return "\(name) is eating \(food)"
    }
    
    func sleeping(hours: Double) -> String {
        return "\(name) has been sleeping for \(hours)"
    }
    
    func playing(game: String) -> String {
        return "\(name) is playing \(game)"
    }
    
    func chase(item: String) -> String {
        return "\(name) is chasing the \(item)"
    }
    
}

var dog1 = Dog(name: "Capone", breed: "Pit", color: "Brown", age: 6)


print(dog1.agePurchased)

dog1.yearsOwned = 2

print(dog1.agePurchased)

print(dog1.ageInHumanYears());


class Cat {
    
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
    
    
    convenience init(age: Int){
        self.init(name: "Garfield", breed:"tabby cat", color:"orange with black stripes", age: age)
    }
    
    //Property Obeserver
    var yearsOwned: Int = 0 {
        willSet(newYearsOwned){
            print("About to set years owned to \(newYearsOwned)")
        }
        didSet {
            if (age >= yearsOwned){
                print("\(name) was purchased when he was \(age - yearsOwned)")
            }
        }
    }
    
    
    // Computed Property
    var agePurchased: Int {
        return age - yearsOwned;
        
    }
    
    
    func ageInHumanYears() -> Int {
        return age*7;
    }
    
    func barking() -> String {
        return "woof!, woof!"
    }
    
    func eating(food: String) -> String {
        return "\(name) is eating \(food)"
    }
    
    func sleeping(hours: Double) -> String {
        return "\(name) has been sleeping for \(hours)"
    }
    
    func playing(game: String) -> String {
        return "\(name) is playing \(game)"
    }
    
    func chase(item: String) -> String {
        return "\(name) is chasing the \(item)"
    }
    
}

class Owner{
    
    var dog = [Dog]()
    var cat = [Cat]()
    
    var name: String
    
    init(name: String){
        self.name = name
        
    }
    
    deinit{
        "\(name)'s owner record has been deleted."
    }
    
}


