//
//  SettingsViewController.swift
//  Codepath iOS Prework
//
//  Created by Sam Mahmood on 1/31/22.
//

import UIKit
let defaults = UserDefaults.standard

class SettingsViewController: UIViewController {

    @IBOutlet weak var tip1Control: UITextField!
    @IBOutlet weak var tip2Control: UITextField!
    @IBOutlet weak var tip3Control: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Sets the title in the Settings Screen
        self.title = "Settings"
        
        // Display the user's custom tip percentages
        tip1Control.text = defaults.string(forKey: "tip1Default")
        tip2Control.text = defaults.string(forKey: "tip2Default")
        tip3Control.text = defaults.string(forKey: "tip3Default")
    }
    
   @IBAction func setDefault(_ sender: Any) {
    // Save user's custom tip percentages
       defaults.set(tip1Control.text, forKey: "tip1Default")
       defaults.set(tip2Control.text, forKey: "tip2Default")
       defaults.set(tip3Control.text, forKey: "tip3Default")
       defaults.synchronize()
   }

}
