//
//  Circle.swift
//  ProfessionalProgramming
//
//

import UIKit

protocol Calculateble {
    func areaOf() -> Int
}

class Circle: Calculateble {
    
    let radius: Int
    
    init(radius: Int) {
        self.radius = radius
    }
    
    func areaOf() -> Int {
        radius * 2
    }
}

class Rectangle: Calculateble {
    
    let weight: Int
    let height: Int
    
    init(weight: Int, height: Int) {
        self.weight = weight
        self.height = height
    }
    
    func areaOf() -> Int {
        weight * height
    }
}

class Triangle: Calculateble {
    
    let weight: Int
    let height: Int
    let low: Int
    
    init(weight: Int, height: Int, low: Int) {
        self.weight = weight
        self.height = height
        self.low = low
    }
    
    func areaOf() -> Int {
        weight * height * low
    }
}

class SizePrinter {
    var item: Calculateble
    
    init(item: Calculateble) {
        self.item = item
    }
    
    func printSize() {
        let result = item.areaOf()
        print(result)
    }
}

/// В данном примере наружается "Принцип открытости-закрытости" при добавлении новых вводных для расчета потребуется так же создать новую структуру и тем самым модуль будет все больше увеличиваться.
