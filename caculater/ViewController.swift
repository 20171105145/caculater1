//
//  ViewController.swift
//  caculater
//
//  Created by 杜炎峰 on 2018/9/28.
//  Copyright © 2018年 杜炎峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0.00
    var flag = 0
   

        @IBOutlet weak var Bsee: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func B1(_ sender: Any) {
        Bsee.text = Bsee.text!+"1"
            }
    
    
    @IBAction func B2(_ sender: Any) {
        Bsee.text = Bsee.text!+"2"
    }
    
    
    @IBAction func B3(_ sender: Any) {
        Bsee.text = Bsee.text!+"3"
    }
    
    
    @IBAction func B4(_ sender: Any) {
        Bsee.text = Bsee.text!+"4"
    }
    
    
    @IBAction func B5(_ sender: Any) {
        Bsee.text = Bsee.text!+"5"
    }
    
    
    @IBAction func B6(_ sender: Any) {
        Bsee.text = Bsee.text!+"6"
    }
    
    @IBAction func B7(_ sender: Any) {
        Bsee.text = Bsee.text!+"7"
    }
    
    @IBAction func B8(_ sender: Any) {
        Bsee.text = Bsee.text!+"8"
    }
    
    @IBAction func B9(_ sender: Any) {
        Bsee.text = Bsee.text!+"9"
    }
    @IBAction func Buttonequal(_ sender: Any) {
        if(flag == 1){
            var sum = 0.00
            sum = temp + Double (Bsee.text!)!
             Bsee.text = "\(sum)"
        }
        if(flag == 2){
            var sum = 0.00
            sum = temp - Double (Bsee.text!)!
            Bsee.text = "\(sum)"
        }
        if(flag == 3){
            var sum = 0.00
            sum = temp * Double(Bsee.text!)!
            Bsee.text = "\(sum)"
        }
       if(flag == 4){
        var sum = 0.00
        sum = temp  / Double(Bsee.text!)!
        Bsee.text = "\(sum)"
        }
       
    }
    @IBAction func Buttondelete(_ sender: Any) {
        Bsee.text = ""
    }
    
    @IBAction func pluse(_ sender: Any){
        temp = Double (Bsee.text!)!
        Bsee.text = ""
        flag = 1
    }
    
    @IBAction func minus(_ sender: Any) {
        temp = Double (Bsee.text!)!
        Bsee.text = ""
        flag = 2
    }
    
    
    @IBAction func multiple(_ sender: Any) {
        temp = Double (Bsee.text!)!
        Bsee.text = ""
        flag = 3
    }
    
    @IBAction func division(_ sender: Any) {
        temp = Double (Bsee.text!)!
        Bsee.text = ""
        flag = 4
    }
    @IBAction func radixpoint(_ sender: Any) {
        Bsee.text = Bsee.text! + "."
    }
    @IBAction func percent(_ sender: Any) {
        temp = Double (Bsee.text!)!
        temp = temp * 0.01
        Bsee.text = "\(temp)"
    }
    
    @IBAction func bracketleft(_ sender: Any) {
        temp = Double (Bsee.text!)!
        Bsee.text = Bsee.text!//括号优先级，栈
    }
    
    @IBAction func x2(_ sender: Any) {
        temp = Double (Bsee.text!)!
        temp = temp * temp
        Bsee.text = "\(temp)"
    }
    
    @IBAction func x³(_ sender: Any) {
        temp = Double (Bsee.text!)!
        temp = temp * temp * temp
        Bsee.text = "\(temp)"
    }
    
    @IBAction func x(_ sender: Any) {
        temp = Double (Bsee.text!)!
        temp = 1 / temp
        Bsee.text = "\(temp)"
    }
    
    @IBAction func π(_ sender: Any) {
        Bsee.text = "3.141592653589793"
    }
    
    @IBAction func e(_ sender: Any) {
        Bsee.text = "2.718281828459045"
    }
    
    
    @IBAction func factorial(_ sender: Any) {
        var i = 1.00
        var a = 0
        var b = 0.00
        var c = 0.00
        var s = 1.00
        a =  Int(temp / 1.00)
        temp = Double (Bsee.text!)!
        c = Double (a)
        b = temp - c
        if b == 0.00{
            while i <= b {
                s = s * i
                i = i + 1
            }
        }
        Bsee.text = "\(s)"
        if b != 0.00{
           Bsee.text = "不是数字"
        }
}
    @IBAction func minuspulse(_ sender: Any) {
        temp = Double(Bsee.text!)!
        temp = temp * (-1)
        Bsee.text = "\(temp)"
        
    }
    
    
    
    
    
    
}
