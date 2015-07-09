//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Chaos John on 7/2/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private enum Op: Printable {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
        
        var description: String {
            get {
                switch self {
                case .Operand(let operand):
                    return "\(operand)"
                case .UnaryOperation(let symbol, _):
                    return symbol
                case .BinaryOperation(let symbol, _):
                    return symbol
                }
            }
        }
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
        
//        knowOps["×"] = Op.BinaryOperation("×", *)
//        knowOps["÷"] = Op.BinaryOperation("÷") { $1 / $0 }
//        knowOps["+"] = Op.BinaryOperation("+", +)
//        knowOps["−"] = Op.BinaryOperation("−") { $1 - $0 }
//        knowOps["√"] = Op.UnaryOperation("√", sqrt)
        
        func learnOp(op: Op) {
            knowOps[op.description] = op
        }
        learnOp(Op.BinaryOperation("×", *))
        learnOp(Op.BinaryOperation("÷") { $1 / $0 })
        learnOp(Op.BinaryOperation("+", +))
        learnOp(Op.BinaryOperation("−") { $1 - $0 })
        learnOp(Op.UnaryOperation("√", sqrt))
    }
    
    private func evaluate(ops: [Op]) -> (result: Double?, remainingOps: [Op]) {
        if !ops.isEmpty {
            var remainingOps = ops
            let op = remainingOps.removeLast()
            switch op {
            case .Operand(let operand):
                return (operand, remainingOps)
            case .UnaryOperation(_, let operation):
                let operandEvaluation = evaluate(remainingOps)
                if let operand = operandEvaluation.result {
                    return (operation(operand), operandEvaluation.remainingOps)
                }
            case .BinaryOperation(_, let operation):
                let op1Evaluation = evaluate(remainingOps)
                if let operand1 = op1Evaluation.result {
                    let op2Evaluation = evaluate(op1Evaluation.remainingOps)
                    if let operand2 = op2Evaluation.result {
                        return (operation(operand1, operand2), op2Evaluation.remainingOps)
                    }
                }
            }
        }
        return (nil, ops)
    }
    
    func evaluate() -> Double? {
//        let (result, _) = evaluate(opStack)
        let (result, remainder) = evaluate(opStack)
////        return nil
        println("\(opStack) = \(result) with \(remainder) left over")
        return result
//        return evaluate(opStack).result
    }
    
    func pushOperand(operand: Double) -> Double? {
        opStack.append(Op.Operand(operand))
        return evaluate()
    }
    
    func performOperation(symbol: String) -> Double? {
        if let operation = knowOps[symbol] {
            opStack.append(operation)
        } else {
            println("not found the operation")
        }
        return evaluate()
    }
}