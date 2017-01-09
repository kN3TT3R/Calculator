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
    // implicitly unwrapped Optional -> display! can be display
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
        // makes sure that when you are using an operation it does not append digits when buttons are pressed
        userIsInTheMiddleOfTyping = false
        
        // what if the title of the π button was not set?
        // then you only want to unwrap (use !) the currentTitle if the sender is set
        // this if statement tests if the currentTitle of this UIButton is set so no need to use the !
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }

    @IBAction func resetDisplay(_ sender: UIButton) {
    }
    
    
    // MARK: - Functions
    
    
    
    

    /*      BASICS
                    -> single inheritence in swift
                    -> all ViewControllers in MVC inherit from UIViewController directly or indeirectly
                    -> use type interference
                    -> all variables need to be initialized
               
     
            -> OPTIONALS (?) 
                    -> are types
                    -> let digit = sender.currentTitle
     
                    -> they are initialized by default
                        -> .currentTitle is an Optional
                        -> by default it is set to "= nil"
                        -> "= nil" does not need to be typed
     
                    -> they have 2 states
                        -> state 1: nil: this Optional is not set (if the UIButton does not have a title)
                        -> state 2: set: it has an associated value (the real title of the UIButton)
                            -> var currentTitle: String? { get }
                            -> what type is currentTitle? it's an Optional and it's associated value is set to a String
     
                    -> why is currentTitle an Optional?
                        -> because the UIButton might not have a title
                        -> this means its not set
     
                    -> how to you get the associated value (= the title) out of the currentTitle if the title is set?
                        -> use !
                            -> let digit = sender.currentTitle!
                            -> it unwrappes the Optional and gives back its real value (= associated value)
     
    */
    
}




























