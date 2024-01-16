//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jaclyn Wilson on 1/16/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //add to the button for hello world - jwil
    @IBAction func showMessage(sender: UIButton) {
        //dictionary for emojis
        var emojiDict = ["👻": "Ghost", "👾": "Monster Man", "Hello World": "Hello World"]
        
        let selectedButton = sender
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            
            var meaning = emojiDict[wordToLookup]
            
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    

}

