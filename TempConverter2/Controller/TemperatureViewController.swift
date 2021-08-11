//
//  ViewController.swift
//  TempConverter2
//
//  Created by elina.peiseniece on 11/08/2021.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var convertedTemperatureLabel: UILabel!
    @IBOutlet weak var temperatureSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var temperatureSlider: UISlider!{
        didSet{
            temperatureSlider.maximumValue = 100
            temperatureSlider.minimumValue = 0
            temperatureSlider.value = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedTemperatureLabel.text = "32 ºF"
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
    }
    
    
}

