//
//  InfoViewController.swift
//  TempConverter2
//
//  Created by elina.peiseniece on 11/08/2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var calculatedValueLabel: UILabel!
    @IBOutlet weak var formulaLabel: UILabel!
    
    var celsiusTemperature = ""
    var convertedTemperature = ""
    var temperatureIndicator = ""
    let formulaExplanation = "To make the calculations\n these are the formulas:\n ºC*9/5+32 = ºF\n ºC +273.15 = ºK"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formulaLabel.text = formulaExplanation
        calculatedValueLabel.text = "By converting \(celsiusTemperature) into \(temperatureIndicator),\n you get \(convertedTemperature)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
