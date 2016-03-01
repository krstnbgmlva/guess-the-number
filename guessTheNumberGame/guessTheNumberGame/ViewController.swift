//
//  ViewController.swift
//  guessTheNumberGame
//
//  Created by Kristina Bogomolova on 3/1/16.
//  Copyright © 2016 FoxyLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func submitUserInput(sender: AnyObject) {
        
        let randomNumber = String(arc4random_uniform(6))
        
        
//    Display the answer in result UILabel:
//
//        if userInput.text == randomNumber {
//            
//            result.text = "Correct!"
//            
//        } else {
//            
//            result.text = "Wrong"
//            
//        }
        
        
       // Display the answer as an alert
        
        let title : String
        
        if userInput.text == randomNumber {
            
            title = "Correct!"
            
        } else {
            
            title = "Wrong!"
        }
        
        let ac = UIAlertController (title: title, message: nil, preferredStyle: .Alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .Default, handler: nil))
            
        self.presentViewController(ac, animated: true, completion: nil)
        
        userInput.text = ""
        
        
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

