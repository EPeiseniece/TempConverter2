//
//  AppearanceViewController.swift
//  TempConverter2
//
//  Created by elina.peiseniece on 11/08/2021.
//

import UIKit

class AppearanceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()
        // Do any additional setup after loading the view.
    }
func setLabelText(){
        var text = "Unable to specify UI style"
        if traitCollection.userInterfaceStyle == .dark{
            text = "Dark Mode is On\n Go to settings if you like \n to change to light mode"
        }else{
            text = "Light Mode is On\n Go to settings if you like \n to change to dark mode"
        }
        textLabel.text = text
       
     }
    
    @IBAction func settingsButtonTapped(_ sender: Any) {
        openSettings()
    }
    
    func openSettings(){
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { success in
                print("success: ",success)
            }
        }
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
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
