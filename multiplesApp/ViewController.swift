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
//    var maxTaps = 0
//    var currentTaps = 0
    var multiple = 0
    var runningSum = 0
    let MAX_SUM = 50
    
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
        
        //maxTaps = Int(inputMultipleTextField.text!)!
        multiple = Int(inputMultipleTextField.text!)!
        runningSum = 0
//        updatePressToAddLabel()
        }
    }
    
        func restartGame() {
            multiple = 0
            inputMultipleTextField.text = ""
            
            multiplesLogo.hidden = false
            inputMultipleTextField.hidden = false
            playButton.hidden = false
            
            pressAddToAddLabel.hidden = true
            addButton.hidden = true
        }
    
    
    func isGameOver() -> Bool {
        if runningSum >= MAX_SUM {
            return true
            } else {
            return false
        }
    }
    
//    func updatePressToAddLabel() {
//        inputMultipleTextField.text = "\(currentTaps)"
//    }
    func updatePressToAddLabel(oldSum: Int, mul: Int, newSum: Int) {
        inputMultipleTextField.text = "\(oldSum) + \(mul) = \(newSum)"
    }
    
    // Pressing this button will take the current running sum, add the multiple to it and then give it a new sum
    @IBAction func addButtonAction(sender: AnyObject) {
        let newSum = runningSum + multiple
        updatePressToAddLabel(runningSum, mul: multiple, newSum: newSum)
        runningSum += multiple
//        currentTaps += 1
//        updatePressToAddLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
}

