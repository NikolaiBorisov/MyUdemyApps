//
//  ViewController.swift
//  SplitTipsApp
//
//  Created by NIKOLAI BORISOV on 14.01.2021.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //Making the tip buttons selected/deselected
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        //Get the current title of the button that was pressed
        let buttonTitle = sender.currentTitle!
        //Remove the last character (%) from the title then turn it back into a String
        let buttonTitleUpdated = String(buttonTitle.dropLast())
        //Turn the String into a double
        let buttonTitleDouble = Double(buttonTitleUpdated)!
        //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
        tip = buttonTitleDouble / 100
        //Dismiss the keyboard when the user chooses one of the tip values
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        //Get the stepper value using sender.value, round it down to a whole number then set it as the text in the splitNumberLabel
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        //Set the numberOfPeople property as the value of the stepper as a whole number
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //Get the text the user typed in the billTextField
        let bill = billTextField.text!
        //If the text is not an empty String ""
        if bill != "" {
            //Turn the bill from a String e.g. 123.50 to an actual String with decimal places e.g. 125.50
            billTotal = Double(bill)!
            //Multiply the bill by the tip percentage and divide by the number of people to split the bill
            let result = billTotal * (1 + tip) / Double(numberOfPeople)
            //Round the result to 2 decimal places and turn it into a String
            finalResult = String(format: "%.2f", result)
        }
            self.performSegue(withIdentifier: "goToResults", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            //Set the destination ResultViewController's properties
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }
}


