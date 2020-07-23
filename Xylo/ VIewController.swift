//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery.
//  All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
 
    //MARK: - Properties
    
    var audioPlayer: AVAudioPlayer!
    let musicNotes = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //someCode
    }

    //MARK: - TilesFunction

    @IBAction func notePressed(_ sender: CustomButton) {
        
        if let soundURL = Bundle.main.url(forResource: musicNotes[sender.tag], withExtension: "wav") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
            audioPlayer.play()
        }
    }
}
