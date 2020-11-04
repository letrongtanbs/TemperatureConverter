//
//  ViewController.swift
//  Temperature converter
//
//  Created by Le Trong Tan on 11/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedTemp: UILabel!
    @IBOutlet weak var celsiusEnter: UITextField!
    @IBOutlet weak var fahrenheitEnter: UITextField!
    
    var tempTemperature: Double = 0.0
    var check = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func celToFah(_ sender: UIButton) {
        tempTemperature = (tempTemperature/5)*9 + 32
        
        if convertedTemp.text == "invalid" || !check{
            convertedTemp.text = "Converted Value"
            view.backgroundColor = UIColor.white
        }else{
            convertedTemp.text = "\(tempTemperature) Fahrenheit."
            view.backgroundColor = UIColor.green
        }
        check = false
        print("Conveted temp to Fah completed")
    }
    
    @IBAction func fahToCel(_ sender: UIButton) {
        tempTemperature = (tempTemperature - 32)*5/9
        if convertedTemp.text == "invalid" || !check{
            convertedTemp.text = "Converted Value"
            view.backgroundColor = UIColor.white
        }else{
            convertedTemp.text = "\(tempTemperature) Degrees."
            view.backgroundColor = UIColor.yellow
        }
        check = false
        print("Conveted temp to Cel completed")
    }
    
    @IBAction func getCel(_ sender: UITextField) {
        convertedTemp.text = "Converted Value"
        view.backgroundColor = UIColor.white
        if celsiusEnter != nil{
            tempTemperature = Double(celsiusEnter.text!) ?? 0.0
            print("If work Ok for getCel")
            check = true
        }else{
            convertedTemp.text = "invalid"
            print("Not a valid number in Cel")
            check = false
        }
    }
    @IBAction func getNewCel(_ sender: UITextField) {
        view.backgroundColor = UIColor.white
        if celsiusEnter != nil{
            celsiusEnter.resignFirstResponder()
            check = true
            print("new Cel OK")
        }else{
            check = false
            print("new Cel fail")
        }
    }
    
    @IBAction func getFah(_ sender: UITextField) {
        convertedTemp.text = "Converted Value"
        view.backgroundColor = UIColor.white
        if fahrenheitEnter != nil{
            tempTemperature = Double(fahrenheitEnter.text!) ?? 0.0
            print("If work Ok for getFah")
            check = true
        }
    }
    @IBAction func getNewFah(_ sender: UITextField) {
        view.backgroundColor = UIColor.white
        if fahrenheitEnter != nil{
            fahrenheitEnter.resignFirstResponder()
            check = true
            print("new Fah OK")
        }else{
            check = false
            print("new Fah fail")
        }
    }
}

