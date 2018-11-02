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
    var seeagain = 0
    
        @IBOutlet weak var Bsee: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Bsee.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func B1(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"1"
        }
        else{
            Bsee.text = "1"
        }
        seeagain = 1
            }
    
    
    @IBAction func B2(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"2"
        }
        else{
            Bsee.text = "2"
        }
         seeagain = 1
    }
    
    
    @IBAction func B3(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"3"
        }
        else{
            Bsee.text = "3"
        }
         seeagain = 1
    }
    
    
    @IBAction func B4(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"4"
        }
        else{
            Bsee.text = "4"
        }
         seeagain = 1
    }
    
    
    @IBAction func B5(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"5"
        }
        else{
            Bsee.text = "5"
        }
         seeagain = 1
    }
    

    @IBAction func B6(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"6"
        }
        else{
            Bsee.text = "6"
        }
        seeagain = 1
    }
    
    @IBAction func B7(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"7"
        }
        else{
            Bsee.text = "7"
        }
        seeagain = 1
    }
    
    @IBAction func B8(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"8"
        }
        else{
            Bsee.text = "8"
        }
        seeagain = 1
    }
    
    @IBAction func B9(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"9"
        }
        else{
            Bsee.text = "9"
        }
        seeagain = 1
    }
    
    @IBAction func B0(_ sender: Any) {
        if seeagain == 1{
            Bsee.text = Bsee.text!+"9"
        }
        else{
            Bsee.text = "0"
        }
        seeagain = 1
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
        seeagain = 2
       
    }
    @IBAction func Buttondelete(_ sender: Any) {
        temp = 0.00
        flag = 0
        seeagain = 0
        Bsee.text = "0"
        
    }
    
    @IBAction func pluse(_ sender: Any){
        if flag == 1{
            Bsee.text = "\(temp + Double (Bsee.text!)!)"
        }
        temp = Double (Bsee.text!)!
        seeagain = 2
        flag = 1
   }
    
    @IBAction func minus(_ sender: Any) {
        if flag == 2{
            Bsee.text = "\(temp - Double (Bsee.text!)!)"
        }
        temp = Double (Bsee.text!)!
        seeagain = 2
        flag = 2
    }
    
    
    @IBAction func multiple(_ sender: Any) {
        if flag == 3{
            Bsee.text = "\(temp * Double(Bsee.text!)!)"
        }
        temp = Double (Bsee.text!)!
        seeagain = 2
        flag = 3
    }
    
    @IBAction func division(_ sender: Any) {
        if flag == 4{
            Bsee.text = "\(temp  / Double(Bsee.text!)!)"
        }
        temp = Double (Bsee.text!)!
        seeagain = 2
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
        var b = 0.00
        var c:Int = 0//Double型整数的temp
        var s = 1.00
        temp = Double (Bsee.text!)!
        c = Int (temp)
        b = temp - Double(c)
        if  b != 0 {
            Bsee.text = "不是数字"
        }
       else{
            while Int(i) <= c {
                s = s * i
                i = i + 1
            }
                  Bsee.text = "\(s)"
        }
}
    @IBAction func minuspulse(_ sender: Any) {
        temp = Double(Bsee.text!)!
        temp = temp * (-1)
        Bsee.text = "\(temp)"
    }
    
    @IBAction func ex(_ sender: Any) {
        temp = Double(Bsee.text!)!
        temp = Double (exp (temp))
        Bsee.text = "\(temp)"

    }
    
    
    @IBAction func AC(_ sender: Any) {
        Bsee.text = ""
        }
    
}





