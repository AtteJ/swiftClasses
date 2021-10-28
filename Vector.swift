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
    
    init(_ x: Double, _ y: Double)
    {
        self.x = x
        self.y = y
    }
    
    
    /// Calculates distance between two vector using pythagorean theorem. By default rounds to two decimals
    ///  - Parameters:
    ///    - vector1: First vector
    ///    - vector2: Second Vector
    ///    - roundTo: How accurately the result is rounded. Default is 100
    static func Distance(_ vector1: Vector, _ vector2: Vector, _ roundTo: Double = 100) -> Double {
        let xDistance: Double = abs(vector2.x - vector1.x)  // Absolute value of distance in x-axis
        let yDistance: Double = abs(vector1.y - vector2.y)  // Absolute value of distance in y-axis
        
        let result: Double = ((xDistance*xDistance) + (yDistance*yDistance)).squareRoot()  // Square root of sides squared
        
        return round(roundTo * result) / roundTo // rounds to .01
    }
    
    
    /// Calculates a third vector between two vectors
    func Average(_ vector1: Vector, _ vector2: Vector) -> Vector {
        let x3: Double = (vector1.x + vector2.x) / 2
        let y3: Double = (vector1.y + vector2.y) / 2
        
        return Vector(x3, y3)
    }
}
