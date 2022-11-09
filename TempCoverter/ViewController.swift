//
//  ViewController.swift
//  TempCoverter
//
//  Created by Shannon Vega on 11/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Input and Output Objects
    
    @IBOutlet weak var txtFahrenheit: UITextField!
    @IBOutlet weak var txtCelsius: UITextField!
    @IBOutlet weak var sldrTemperature: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sldrTemperature.value = 0
        
    }
    

    @IBAction func sldrTemperatureAction(_ sender: Any) {
        
        let sldrTempValue = sldrTemperature.value
        let celsiusValue = round(sldrTempValue*100)/100
        
        txtCelsius.text = String(celsiusValue)+" C°"
        
        var fahrenheitValue = ((sldrTempValue*9)/5)+32
        fahrenheitValue = round(fahrenheitValue*100)/100
        txtFahrenheit.text = String(fahrenheitValue)+" F°"
        
    }
}

