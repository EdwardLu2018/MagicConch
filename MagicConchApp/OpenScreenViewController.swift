//
//  OpenScreenViewController.swift
//  MagicConchApp
//
//  Created by Edward on 7/21/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class OpenScreenViewController: UIViewController {
    
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        view.endEditing(true)
        let dvc = segue.destinationViewController as! ConchViewController

        dvc.questionAsked = questionTextField.text!
    }

    @IBAction func yelloButtonIsPressed(sender: AnyObject) {

        questionTextField.text = ""
        
        let alert = UIAlertController(title: "ALL HAIL THE MAGIC CONCH!!", message: "Welcome to our club, welcome to our club, welcome, \(nameTextField.text!), welcome \(nameTextField.text!), welcome to our club!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
}






