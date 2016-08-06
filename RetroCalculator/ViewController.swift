//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Ryan Lim on 8/5/16.
//  Copyright © 2016 Ryan Lim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var btnSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //get path as string
        let path = Bundle.main.pathForResource("btn", ofType: "wav")
        //convert path to url
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err)
        }
    
    }

    @IBAction func numberButtonWasPressed(_ sender: AnyObject) {
        playSound()
    }
    
    func playSound(){
        if btnSound.isPlaying{
            btnSound.stop()
        }
        btnSound.play()
    }

    


}

