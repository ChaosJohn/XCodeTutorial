//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Chaos John on 7/2/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private enum Op {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
    }
    
//    var opStack = Array<Op>()
    private var opStack = [Op]() // recommended
    
//    var knownOps = Dictionary<String, Op>() 
    private var knowOps = [String:Op]()
    
    init() {
//        knowOps["×"] = Op.BinaryOperation("×") { $0 * $1 }
//        knowOps["÷"] = Op.BinaryOperation("÷") { $1 / $0 }
//        knowOps["+"] = Op.BinaryOperation("+") { $0 + $1 }
//        knowOps["−"] = Op.BinaryOperation("−") { $1 - $0 }
//        knowOps["√"] = Op.UnaryOperation("√") { sqrt($0) }
        knowOps["×"] = Op.BinaryOperation("×", *)
        knowOps["÷"] = Op.BinaryOperation("÷") { $1 / $0 }
        knowOps["+"] = Op.BinaryOperation("+", +)
        knowOps["−"] = Op.BinaryOperation("−") { $1 - $0 }
        knowOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
    private func evaluate(ops: [Op]) -> (result: Double?, remainingOps: [Op]) {
        if !ops.isEmpty {
            var remainingOps = ops
            let op = remainingOps.removeLast()
            
        }
        return (nil, ops)
    }
    
    func evaluate() -> Double? {
        
        return nil
    }
    
    func pushOperand(operand: Double) {
        opStack.append(Op.Operand(operand))
    }
    
    func pushOperation(symbol: String) {
        if let operation = knowOps[symbol] {
            opStack.append(operation)
        } else {
            println("not found the operation")
        }
    }
}