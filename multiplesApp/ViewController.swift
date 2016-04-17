//
//  ViewController.swift
//  multiplesApp
//
//  Created by Jason McCoy on 4/12/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    var maxTaps = 0
    var currentTaps = 0
    
    // First Screen user sees
    @IBOutlet weak var multiplesLogo: UIImageView!
    
    @IBOutlet weak var inputMultipleTextField: UITextField!

    @IBOutlet weak var playButton: UIButton!

    // Second Screen user sees
    @IBOutlet weak var pressAddToAddLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    // Press this and see the second screen
    @IBAction func playButtonAction(sender: AnyObject) {
        
    if inputMultipleTextField.text != nil && inputMultipleTextField.text != "" {
        
        multiplesLogo.hidden = true
        inputMultipleTextField.hidden = true
        playButton.hidden = true
        
        pressAddToAddLabel.hidden = false
        addButton.hidden = false
            
        updatePressToAddLabel()
        }
    }
    
        func restartGame() {
            maxTaps = 0
            inputMultipleTextField.text = ""
            
            multiplesLogo.hidden = false
            inputMultipleTextField.hidden = false
            playButton.hidden = false
            
            pressAddToAddLabel.hidden = true
            addButton.hidden = true
        }
    
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
            } else {
            return false
        }
    }
    
    func updatePressToAddLabel() {
        inputMultipleTextField.text = "\(currentTaps) Taps"
    }
    
    // Pressing this button will take the current running sum, add the multiple to it and then give it a new sum
    @IBAction func addButtonAction(sender: AnyObject) {
        currentTaps += 1
        updatePressToAddLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
}

