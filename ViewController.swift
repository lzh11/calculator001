//
//  ViewController.swift
//  calculator001
//
//  Created by LZH on 16/6/27.
//  Copyright © 2016年 LZH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRator: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func didCilcked(sender: UIButton) {
        var value = sender.currentTitle
        if value == "+" || value == "-" || value == "x" || value == "/"{
        opeRator = value!
        return
            
        }
        else if value == "AC"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            resultLabel.text = "0"
            return
        }
            
        else if value == "="{
            var result = 0
            switch opeRator {
                case "+":
                    result = opeRand1.Int()! + opeRand2.Int()!
                case "-":
                    result = opeRand1.Int()! - opeRand2.Int()!
                case "x":
                    result = opeRand1.Int()! * opeRand2.Int()!
                case "/":
                    result = opeRand1.Int()! / opeRand2.Int()!
                result = 0
            
            }
            resultLabel.text = "\(result)"
            return
        }
        if opeRand1 == ""{
            opeRand1 = opeRand1 + value!
            resultLabel.text = opeRand1
        }
        else {
            opeRand2 = opeRand2 + value!
            resultLabel.text = opeRand2
        }
    }
}

