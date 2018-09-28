//
//  ViewController.swift
//  caculater
//
//  Created by 杜炎峰 on 2018/9/28.
//  Copyright © 2018年 杜炎峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = 0
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
    
    @IBAction func Buttondelete(_ sender: Any) {
        Bsee.text = ""
    }
    
    @IBAction func Buttonequal(_ sender: Any) {
        if(flag == 1)
        {
            var sum = 0
            sum = temp + Int(Bsee.text!)!
            Bsee.text = "\(sum)"
        }
    }
    
    
    @IBAction func pluse(_ sender: Any) {
        temp = Int(Bsee.text!)!
        Bsee.text = ""
        flag = 1
    }
    
    
    
    
    
}

