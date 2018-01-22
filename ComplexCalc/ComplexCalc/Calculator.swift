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
        if (arg.count == 0) {
            return 0
        }
        var sum = arg[0]
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
    
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }

    public func mathOp(args:[Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum = beg
        let size = args.count - 1 // one too much without -1
        for num in 0...size {
            sum = op(sum, args[num])
        }
        return sum
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
