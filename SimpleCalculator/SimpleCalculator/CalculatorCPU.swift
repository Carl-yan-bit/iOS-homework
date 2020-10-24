//
//  CalculatorCPU.swift
//  SimpleCalculator
//
//  Created by yanhaoming on 2020/10/19.
//  Copyright © 2020 NJU. All rights reserved.
//

import Foundation

class CalculatorCPU {
    //计算并返回表达式的结果
    func calculateResult(expression:String) -> Double {
        let stringWithMathematicalOperation: String = expression;
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation);
        let result: Double = exp.expressionValue(with:nil, context: nil) as! Double;
        return result;
    }
    
    
    //判断是否为操作符
    func isOperator(operation:Character?) -> Bool {
        if operation == "+" || operation == "-" || operation == "*" || operation == "/" {
            return true;
        }
        else {
            return false;
        }
    }
}
