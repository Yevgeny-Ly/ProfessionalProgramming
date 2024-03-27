//
//  DependencyInversion.swift
//  ProfessionalProgramming
//
//

import UIKit

class Light {
    func turnOn() {}
    func turnOff() {}
}

/// класс нижнего уровня. А тут сама реализация.
class LightBulb: Light {
    override func turnOn() {
        /// включает свет
//        lamp.on()
    }
    
    override func turnOff() {
        /// включает свет
//        lamp.off()
    }
}

/// класс верхнего уровня. Так как тут абстрактная бизнес логика
class Switch {
    let bulb: LightBulb
    
    init(bulb: LightBulb) {
        self.bulb = bulb
    }
    
    func toggle() {
        bulb.turnOn()
    }
}

/// Проблема буквы "D". Модуль верхнего уровня зависит от модуля нижнего уровня. Значит надо завязаться на абстракцию, а не на реализацию.
