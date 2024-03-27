//
//  InterfaceSegregation.swift
//  ProfessionalProgramming
//
//

import UIKit

protocol Worker {
    func work()
}

protocol WorkerEat {
    func eat()
}

typealias WorkerType = Worker & WorkerEat

class Robot: Worker {
    func work() {
        // Робот работает
    }
}

class Human: WorkerType {
    func work() {
    }
    
    func eat() {
    }
}

/// Решаем дробление протоколов (лучше несколько, чем один большой и неуклюжий протокол)). Частично решаем проблему буквы "S", уже как второстепенная проблема.
