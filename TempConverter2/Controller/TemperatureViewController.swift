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
        print("tempslider", temperatureSlider.value)
        updateTemperatureLabelForSlider(value: temperatureSlider.value)
    }
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        updateTemperatureLabelForSlider(value: temperatureSlider.value)
    }
    
    func updateTemperatureLabelForSlider (value: Float){
        let celsiusTemp = Int(value)
        celciusLabel.text = "\(celsiusTemp)ºC"
        
        var convertedTempString = ""
        switch temperatureSegmentControl.selectedSegmentIndex {
        case 0:
            let farenheitTempString = String(format: "%.2F", convertTempFrom(celsius: celsiusTemp).farenheit)
            convertedTempString = farenheitTempString +
            " ºF"
        default:
            let kelvinTempString = String(format: "%.2F", convertTempFrom(celsius: celsiusTemp).kelvin)
            convertedTempString = kelvinTempString +
            " ºK"
        }
        convertedTemperatureLabel.text = convertedTempString
    }
    func convertTempFrom(celsius: Int)-> (farenheit: Double, kelvin: Double){
        let farenheit = (Double(celsius) * 9 / 5) + 32
        let kelvin = Double(celsius) + 273.15
        return (farenheit, kelvin)
    }
    
    
}

