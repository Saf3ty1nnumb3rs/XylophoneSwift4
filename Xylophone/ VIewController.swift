//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        let tag = sender.tag
        playSound(num: tag)
        
    }
    func playSound(num: Int) {
        let soundName = "note\(num)"
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            
            
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
  

}

