//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    @IBAction func onPressed(_ sender: UIButton) {
        playSound(buttonName: sender.currentTitle!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(buttonName:String) {
        let url = Bundle.main.url(forResource: buttonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }


}

