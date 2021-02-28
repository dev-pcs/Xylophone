//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit            //enables ui interaction
import AVFoundation     //enables audio video playback

class ViewController: UIViewController {        //UI View controller class to control View
    
    var player: AVAudioPlayer!      //ceate a new audio player

    override func viewDidLoad() {  //Called after the controller's view is loaded into memory
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {     //what to do when key is pressed
        let sound = sender.currentTitle             //save the sound name to var @sound, sender.curremt title is an optional data type
        sender.alpha = 0.5                          //change opacity yo half
        playSound(soundName: sound!)                //it is optional datatype because we have to verofy if there is a button that will play nothing
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { //wait for 0.2 seconds then execute the block inside
            sender.alpha = 1                        //change opacity back to 1
        }
        
    }
    
    func playSound(soundName: String) {                                  //play sound function, takes sound name as an argument
        let url = Bundle.main.url(forResource: "\(soundName)", withExtension: "wav")       //locate the sound file
        player = try! AVAudioPlayer(contentsOf: url!)                           //load the music
        player.play()                                                           //play the sound
                
    }
}


/*      What i learned:
        1. Functions
        2. Optional data type
        3. playing sounds
        4. AV Foundation
        5. functions with arguments and scope
        6. providing delay
        7. changing opacity when button is pressed
 */

