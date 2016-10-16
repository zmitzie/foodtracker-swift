//
//  ViewController.swift
//  FoodTracker
//
//  Created by Zacharias Mitzelos on 10/16/16.
//  Copyright © 2016 TryingOutSwift Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Mark: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // Mark: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}

