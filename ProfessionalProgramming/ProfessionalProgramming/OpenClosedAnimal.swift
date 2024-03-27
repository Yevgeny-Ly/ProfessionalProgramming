//
//  OpenClosedAnimal.swift
//  ProfessionalProgramming
//
//

import UIKit

class OpenClosedAnimal {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound(animal: String, sound: String) {
        if name == animal {
            print(sound)
        } else if name == animal {
            print(sound)
        }
    }
}

/// Данный пример нарушает "Принцип Открытости-закрытости" т.к. при добавление новой сущности в метод makeSound придется переписывать код заново.
