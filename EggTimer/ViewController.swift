//
//  ViewController.swift
//  EggTimer
//
//  Created by NIKOLAI BORISOV on 11.01.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTime = [
        "Soft": 3,
        "Medium": 4,
        "Hard": 7
    ]
    
    var player: AVAudioPlayer!
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    //    let softTime = 5
    //    let mediumTime = 7
    //    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        totalTime = eggTime[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLable.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            titleLable.text = "Done!"
            
            let url = Bundle.main.url(forResource: "D", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    //        if hardness == "Soft" {
    //            print(softTime)
    //        } else if hardness == "Medium" {
    //            print(mediumTime)
    //        } else {
    //            print(hardTime)
    //        }
    
    
    //        switch hardness {
    //        case "Soft":
    //            print(softTime)
    //        case "Medium":
    //            print(mediumTime)
    //        case "Hard":
    //            print(hardTime)
    //        default:
    //            print("Error")
    //        }
    
}
