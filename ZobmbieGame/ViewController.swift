//
//  ViewController.swift
//  ZobmbieGame
//
//  Created by Pradeep on 5/12/17.
//  Copyright © 2017 Pradeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!


    @IBOutlet weak var StartGameButton: UIButton!
    @IBOutlet weak var StoryModeText: UITextView!
    
    var counter = 0
     let ButtonText = ["START", "CONTINUE...","CONTINUE...", "CONTINUE...", "CONTINUE...", "GOOD LUCK.  YOU WILL NEED IT"]
    
    let StoryModeTextShow = ["SURVIVE","Waking up in a pool of sweat to the sound of screams and car alarms, something doesn’t seem right…. All you remember is watching the news the night before, trying to call your parents before the phone lines went dead, and passing out- locked in your room.","After the news broke last week that zombies are taking over and eating anyone they come in contact with, you haven’t dared to leave your apartment. But now, you are out of food, and loosing your mind being trapped up alone, you make the decision to leave.","Last you heard before the TV signal dropped, there was a safe heaven in Florida","*Grabbing a  map* “that’s a 10 day walk from where you are. You can make it. Just have to be very cautious of what you run into","Collecting your homemade armor, and a hand gun you never thought you would use,  you swing your apartment door open, and bravely hit the road. Good luck…."]
    
    @IBAction func StoryMode(_ sender: Any) {
        if counter == ButtonText.count {
            Button.isHidden = true
            StoryModeText.isHidden = true
            StartGameButton.isHidden = false
        }
        else {
        Button.setTitle(ButtonText[counter], for: .normal)
        StoryModeText.text = StoryModeTextShow[counter]
        counter += 1
        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        StartGameButton.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

