//
//  Vector.swift
//  dotBrains
//
//  Created by Atte Jokinen on 28.10.2021.
//

import Foundation

class Vector {
    public var x: Double
    public var y: Double
    
    init(x: Double, y: Double)
    {
        self.x = x
        self.y = y
    }
    
    
    //Calculates distance between two vector using pythagorean theorem
    func Distance(vector1: Vector, vector2: Vector) -> Double {
        let xDistance: Double = abs(vector2.x - vector1.x)  // Absolute value of distance in x-axis
        let yDistance: Double = abs(vector1.y - vector2.y)  // Absolute value of distance in y-axis
        
        return (xDistance*xDistance + yDistance*yDistance).squareRoot()  // Square root of sides squared
    }
    
    
    // Calculates a third vector between two vectors
    func Average(vector1: Vector, vector2: Vector) -> Vector {
        let x3: Double = (vector1.x + vector2.x) / 2
        let y3: Double = (vector1.y + vector2.y) / 2
        
        return Vector(x: x3, y: y3)
    }
}
