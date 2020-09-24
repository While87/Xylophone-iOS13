//
//  ViewController.swift
//  Xylophone
//
//  Created by while on 28/06/2019.
//  Copyright © 2019 while. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.8
        playSound(soundName: sender.currentTitle!)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { sender.alpha = 1
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}
