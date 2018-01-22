//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    //basic calc
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    // array calc
    public func add(_ arg: [Int]) -> Int {
        var sum = 0
        for num in arg {
            sum += num
        }
        return sum
    }

    public func multiply(_ arg: [Int]) -> Int {
        var sum = 1
        for num in arg {
            sum *= num
        }
        return sum
    }

    public func count(_ arg: [Int]) -> Int {
        return arg.count
    }

    public func avg(_ args: [Int]) -> Int {
        return add(args) / args.count
    }
    
    func mathOp(op: (Int, Int) -> Int, firstNum: Int, secondNum: Int) -> Int {
        return op(firstNum, secondNum)
    }


    // Points: tuples to create pairs
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    public func add(lhs : [String: Int], rhs : [String: Int]) -> [String: Int] {
        let x = lhs["x"]! + rhs["x"]!
        let y = lhs["y"]! + rhs["y"]!
        let pair = [
            "x": x,
            "y": y,
            ]
        return pair
    }

    public func subtract(lhs : [String: Int], rhs : [String: Int]) -> [String: Int] {
        let x = lhs["x"]! - rhs["x"]!
        let y = lhs["y"]! - rhs["y"]!
        let pair = [
            "x": x,
            "y": y,
            ]
        return pair
    }
}
