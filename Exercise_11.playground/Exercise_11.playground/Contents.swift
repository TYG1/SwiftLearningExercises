//: Playground - noun: a place where people can play

import UIKit

class Owner{
    
    var pets = [Pet]()
    
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    deinit{
        "\(name)'s owner record has been deleted."
    }
    
    func addPet(pet: Pet){
        pets.append(pet)
    }
    
    subscript(index: Int) -> String {
        return pets[index].makeSound()
    }
    
}

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
    
    internal unowned var owner: Owner
    
    init(name: String,breed: String,color: String,age: Int, owner: Owner){
        
        self.owner = owner;
        
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



class Cat : Pet {
    
    var name: String
    var breed: String
    var color: String
    var age: Int
    
    internal weak var owner: Owner?
    
    init(name: String,breed: String,color: String,age: Int,owner: Owner){
        self.owner = owner;
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







