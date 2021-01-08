//
//  ViewController.swift
//  MyDicee
//
//  Created by NIKOLAI BORISOV on 08.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var diceArray = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]
    
    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceView1.image = diceArray.randomElement()
        diceView2.image = diceArray.randomElement()
    }
    
}

