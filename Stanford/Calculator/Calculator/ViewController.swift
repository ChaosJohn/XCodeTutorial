//
//  ViewController.swift
//  Calculator
//
//  Created by Chaos John on 6/15/15.
//  Copyright (c) 2015 Chaos John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
//        let digit = sender.currentTitle
        if let digit = sender.currentTitle {
//            println("digit = \(digit)")
//            if display.text == "" {
//                println("emplty")
//            }
            if userIsInTheMiddleOfTypingANumber {
                display.text = display.text! + digit
            } else {
                display.text = digit
                userIsInTheMiddleOfTypingANumber = true
            }
        } else {
            println("nil")
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        if userIsInTheMiddleOfTypingANumber {
            enter()
        }
        if let operation = sender.currentTitle {
            switch operation {
            case "×": performOperation{$0 * $1}
//                if operandStack.count >= 2 {
//                displayValue = operandStack.removeLast() * operandStack.removeLast()
//                    enter()
//                }
//                performOperation({
////                    (op1: Double, op2: Double) -> Double in
////                    (op1, op2) in
////                    op1 * op2
//                    $0 * $1
//                })
            case "÷": performOperation{$1 / $0}
//                if operandStack.count >= 2 {
//                    displayValue = operandStack.removeLast() / operandStack.removeLast()
//                    enter()
//                }
            case "+": performOperation{$0 + $1}
//                if operandStack.count >= 2 {
//                    displayValue = operandStack.removeLast() + operandStack.removeLast()
//                    enter()
//                }
            case "−": performOperation{$1 - $0}
//                if operandStack.count >= 2 {
//                    displayValue = operandStack.removeLast() - operandStack.removeLast()
//                    enter()
//                }
            case "√": performOperation{sqrt($0)}
            default:
                break
            }
        } else {
            println("nil")
        }
    }
    
    func performOperation(operation: (Double, Double) -> Double) {
        if operandStack.count >= 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }
    
    // swift from oc does not support func with same name
    private func performOperation(operation: Double -> Double) {
        if operandStack.count >= 1 {
            displayValue = operation(operandStack.removeLast())
            enter()
        }
    }

//    func abc(a: Double, b: Double) {
//        
//    }
//    
//    func abc(a: Double) {
//        
//    }
    
    var operandStack: Array<Double>  = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        operandStack.append(displayValue)
        println("operandStack = \(operandStack)")
    }
    
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }
}

