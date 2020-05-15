//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

// EDITED BY DIEGO SOLIS ON 02/17/2020
// THIS PROJECT IS FROM AN ONLINE COURSE I AM TAKING
// LAST EDIT ON 14/05/2020

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(myKey: sender.currentTitle!)
        sender.alpha = 0.5
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            
        }
    }
    
    func playSound( myKey: String) {
        let url = Bundle.main.url(forResource: myKey, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}


/*
import UIKit
import AVFoundation
// Audiovisual Foundational module

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
//    Create a variable called player, and add
//    ':' to specify data type (AVAudioplayer)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: Any) {
        playSound()
    }
    
    func playSbbb ound() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//        forResource is for sound name
//        forExtension specifies the type of file

        do {
            
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    

}
*/
