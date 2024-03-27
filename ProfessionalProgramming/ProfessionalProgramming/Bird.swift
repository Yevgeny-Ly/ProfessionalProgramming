//
//  Bird.swift
//  ProfessionalProgramming
//
//

import UIKit

typealias BirdFly = Animal & Fly
typealias BirdWalk = Animal & Walk

protocol Animal {
    var getName: String { get set }
}

protocol Fly {
    func fly()
}

protocol Walk {
    func walk()
}

class Bird: Animal {
    var getName: String
    
    init(getName: String) {
        self.getName = getName
    }
    
    func fly() {
        /// Реализация полета
    }
}

class Ara: BirdFly {
    var getName: String
    
    init(getName: String) {
        self.getName = getName
    }
    
    func fly() {
        /// Реализация полета
    }
}

class Penguin: BirdWalk {
    var getName: String
    
    init(getName: String) {
        self.getName = getName
    }
    
    func walk() {
        /// Реализация хоть
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let myBird: Animal = Penguin(getName: "Игорь")
        myBird.getName
    }
}
