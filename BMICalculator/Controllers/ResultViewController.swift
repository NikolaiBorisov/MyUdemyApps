//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by NIKOLAI BORISOV on 14.01.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var reculcButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reculcButton.layer.cornerRadius = 10
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
