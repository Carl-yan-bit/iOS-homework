//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by yanhaoming on 2020/10/19.
//  Copyright © 2020 NJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator = CalculatorCPU();
    var flag = false;//标识当得出答案时再按数字会覆盖
    @IBOutlet weak var screen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //按下数字
    @IBAction func NumberPressed(_ sender: UIButton) {
        if screen.text == "0" || flag{
            screen.text = sender.currentTitle;
            flag = false;
        }
        else {
            screen.text?.append(sender.currentTitle ?? "0");
        }
        
    }
    
    //按下运算符
    @IBAction func OperationPressed(_ sender: UIButton) {
        var operatorStr:String?;
        flag = false;
        if sender.currentTitle=="×" {
            operatorStr = "*";
        }
        else if sender.currentTitle=="÷"{
            operatorStr = "/"
        }
        else {
            operatorStr = sender.currentTitle;
        }
        
        if operatorStr == "AC" {
            screen.text = "0";
        }
        else {
            screen.text?.append(operatorStr ?? "+");
        }
    }
    
    
    @IBAction func calculateResult(_ sender: UIButton) {
        flag = true;
        var res = calculator.calculateResult(expression: screen.text ?? "");
        if sender.currentTitle == "+/-" {
            res = -res;
        }
        if sender.currentTitle == "%" {
            res = res / 100.0;
        }
        screen.text = String(res);
    }
    
}

