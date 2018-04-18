//
//  ViewController.swift
//  calculator
//
//  Created by TryCatch Classes on 11/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

enum operations:String
{
    case Add = "+"
    case Minus = "-"
    case Divide = "/"
    case Multiply = "*"
    case Modulo = "%"
    case MinusPlus = "+/-"
    case NULL = "null"
}
class ViewController: UIViewController {
    var currentNumber = ""
    var leftOperand = ""
    var rightOperand = ""
    var result = ""
    var currentOperation:operations = .NULL
    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func clearButton(_ sender: Any) {
        currentNumber = ""
        leftOperand = ""
        rightOperand = ""
        currentOperation = .NULL
        result = ""
        outputLabel.text = ".0"
    }
    @IBAction func positiveNegativeButton(_ sender: Any) {
        operations(operation: .MinusPlus)
    }
    @IBAction func Modulo(_ sender: Any) {
        operations(operation: .Modulo)
    }
    @IBAction func divide(_ sender: Any) {
        operations(operation: .Divide)
    }
    @IBAction func multiplyButton(_ sender: Any) {
        operations(operation: .Multiply)
    }
    @IBAction func minusButton(_ sender: Any) {
        operations(operation: .Minus)
    }
    @IBAction func numericButton(_ sender: AnyObject) {
        if currentNumber.count <= 8 {
        currentNumber += "\(sender.tag!)"
        outputLabel.text = currentNumber
        }
    }
    @IBAction func plusButton(_ sender: Any) {
        operations(operation: .Add)
    }
    @IBAction func dotButton(_ sender: Any) {
        if currentNumber.count <= 7
        {
        currentNumber += "."
        outputLabel.text = currentNumber
        }
    }
    @IBAction func equalsButton(_ sender: Any) {
        operations(operation: currentOperation)
    }
    func operations(operation: operations) {
        if currentOperation != .NULL{
            if currentNumber != ""
            {
                rightOperand = currentNumber
                currentNumber = ""
                
                if currentOperation == .Add{
                    result = "\(Double(leftOperand)! + Double(rightOperand)!)"
                }else if currentOperation == .Minus {
                    result = "\(Double(leftOperand)! - Double(rightOperand)!)"
                }else if currentOperation == .Divide {
                    result = "\(Double(leftOperand)! / Double(rightOperand)!)"
                }else if currentOperation == .Multiply {
                    result = "\(Double(leftOperand)! * Double(rightOperand)!)"
                }else if currentOperation == .Modulo {
                    result = "\(Double(leftOperand)!.truncatingRemainder(dividingBy: Double(rightOperand)!))"
                }
                else if currentOperation == .MinusPlus {
                    //result = 
                }
                leftOperand = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0){
                    result = "\(Int(Double(result)!))"
                }
                outputLabel.text = String(result.prefix(9))
                if outputLabel.text == "1111"
                {
                    let vc = storyboard?.instantiateViewController(withIdentifier: "CustomView") as! CustomView
                    let navigationController = UINavigationController(rootViewController: vc)
                   self.present(navigationController, animated: true, completion: nil)
                    //self.navigationController?.present(navigationController, animated: true,completion: nil)
                  
                }
            }
            currentOperation = operation
        }
        else
        {
            leftOperand = currentNumber
            currentNumber = ""
            currentOperation = operation
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        showAlert()
    }
    func showAlert()
    {
        if firstTimeLaunch == true{
            let alert = UIAlertController(title: "Welcome To the Secret Vault", message: "By Default password to enter in your personal space will be '1111' and perform * by 1", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "ok", style: .default) { (action) in
                print("ok")}
            alert.addAction(okAction)
            //self.presentedViewController(alert,animated: true, completion: nil)
            //let appDelegate = UIApplication.shared.delegate as! AppDelegate
           // appDelegate.window?.rootViewController?.present(alert, animated: true, completion: nil)
            self.present(alert, animated: true)
            
            // Do any additional setup after loading the view, typically from a nib.
        }
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
