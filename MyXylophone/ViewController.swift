//
//  ViewController.swift
//  MyXylophone
//
//  Created by NIKOLAI BORISOV on 09.01.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the opacity to half of the button that got pressed
        sender.alpha = 0.5
        //Code should execute after 0.5 second delay and then brings sender's opacity back up to fully opaque.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { sender.alpha = 1.0 }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}


