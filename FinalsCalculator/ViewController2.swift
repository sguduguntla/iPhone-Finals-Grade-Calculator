//
//  ViewController2.swift
//  FinalsCalculator
//
//  Created by Durgaprasad Guduguntla on 6/3/15.
//  Copyright (c) 2015 SJ Coding. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {

    @IBOutlet var continueBtn: UIButton!
    
    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var backBtn: UIBarButtonItem!
    var name = String();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "iphonebg.jpg")!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func continuePressed(sender: AnyObject) {
        name = nameField.text;
        
        if(name == "") {
            var alert = UIAlertView();
            alert.title = "Please enter a name!"
            alert.addButtonWithTitle("Ok");
            alert.show();
        } else {
            let thirdViewController = self.storyboard!.instantiateViewControllerWithIdentifier("view3") as!
            ViewController3
            
            self.presentViewController(thirdViewController, animated: true, completion: nil);
        }
        

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return false
    }

    
    @IBAction func backPressed(sender: AnyObject) {
        let firstViewController = self.storyboard!.instantiateViewControllerWithIdentifier("view1") as!
        ViewController
        
        self.presentViewController(firstViewController, animated: true, completion: nil)
    }
    
    func getName(random: String) -> String {
        return name;
    }
    

}
