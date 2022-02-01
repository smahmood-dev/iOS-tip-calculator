//
//  ViewController.swift
//  Codepath iOS Prework
//
//  Created by Sam Mahmood on 1/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var partyControl: UIStepper!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var perPersonLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Opens numeric keyboard to input bill amount at app launch
        billAmountTextField.keyboardType = .decimalPad
        billAmountTextField.becomeFirstResponder()
        
        // Loads the last entered bill amount
        billAmountTextField.text = defaults.string(forKey: "billDefault")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Display the user's custom tip percentages
        tipControl.setTitle(defaults.string(forKey: "tip1Default"), forSegmentAt: 0)
        tipControl.setTitle(defaults.string(forKey: "tip2Default"), forSegmentAt: 1)
        tipControl.setTitle(defaults.string(forKey: "tip3Default"), forSegmentAt: 2)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        defaults.set(bill, forKey: "billDefault")
        
    // Load the user's custom tip percentages
        let tip1percent = defaults.double(forKey: "tip1Default")
        let tip2percent = defaults.double(forKey: "tip2Default")
        let tip3percent = defaults.double(forKey: "tip3Default")
        
    // Get the bill total by multiplying bill * tipPercentage
        let tipPercentage = [(tip1percent/100), (tip2percent/100), (tip3percent/100)]
        let tip = bill *
            tipPercentage[tipControl.selectedSegmentIndex]
        print(tip)
        let total = bill + tip
        let perPerson = ((bill + tip)/partyControl.value)
        
    // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
    // Update Party Size Label
        partyLabel.text = String(format: "%.0f", partyControl.value)
    // Update Bill Total Amount
        billTotalLabel.text = String(format: "$%.2f", total)
    // Update Per-Person Amount
        perPersonLabel.text = String(format: "$%.2f", perPerson)
    }
}

