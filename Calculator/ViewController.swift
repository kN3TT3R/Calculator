//
//  ViewController.swift
//  Calculator
//
//  Created by Kenneth Debruyn on 8/01/17.
//  Copyright © 2017 kN3TT3R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - IBOutlets
    @IBOutlet weak var display: UILabel!
    
    
    // MARK: - Global Variables & Constants
    var userIsInTheMiddleOfTyping = false
   
    
    // MARK: - Overridden Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: - IBActions
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
        
    }

    @IBAction func resetDisplay(_ sender: UIButton) {
    }
    
    
    // MARK: - Functions
    
    
}
