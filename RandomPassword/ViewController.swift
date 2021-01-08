//
//  ViewController.swift
//  RandomPassword
//
//  Created by NIKOLAI BORISOV on 08.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //    let symbols = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    
    let length = 8
    let pswdChars = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func passwordButtonPressed(_ sender: UIButton) {
        
        //        let one = symbols.randomElement()
        //        let two = symbols.randomElement()
        //        let three = symbols.randomElement()
        //        let four = symbols.randomElement()
        //        let five = symbols.randomElement()
        //        let six = symbols.randomElement()
        //
        //        passwordTF.text = one! + two! + three! + four! + five! + six!
        
        passwordTF.text = String((0..<length).compactMap{ _ in pswdChars.randomElement() })
    }
    
}

