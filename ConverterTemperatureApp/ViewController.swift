//
//  ViewController.swift
//  ConverterTemperatureApp
//
//  Created by agnese.saulite on 31/08/2020.
//  Copyright © 2020 AS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider! {
        didSet{
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 99
            tempSlider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.text = "32°"
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        print("value: ", sender.value)
        let tempCelsius = Int(sender.value)
        celsiusLabel.text = "\(tempCelsius) °C"
        
        let tempFahr = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(tempFahr) °F"
    }
}

