//
//  ViewController3.swift
//  FinalsCalculator
//
//  Created by Durgaprasad Guduguntla on 6/3/15.
//  Copyright (c) 2015 SJ Coding. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var curGradeField: UITextField!
    
    @IBOutlet var desiredGradeField: UITextField!
    
    @IBOutlet var finalWorthField: UITextField!
    
    @IBOutlet var gradeSegmentControl: UISegmentedControl!
    
    @IBOutlet var calcBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        curGradeField.textColor = UIColor.lightGrayColor()
        desiredGradeField.textColor = UIColor.lightGrayColor()
        finalWorthField.textColor = UIColor.lightGrayColor()
        self.curGradeField.delegate = self;
        self.desiredGradeField.delegate = self;
        self.finalWorthField.delegate = self;
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "iphonebg.jpg")!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func beginTyping(sender: AnyObject) {
        if curGradeField.textColor == UIColor.lightGrayColor() {
            curGradeField.text = nil
            curGradeField.textColor = UIColor.blackColor()
        }
    }
    
    @IBAction func beginTypingTwo(sender: AnyObject) {
        if desiredGradeField.textColor == UIColor.lightGrayColor() {
            desiredGradeField.text = nil
            desiredGradeField.textColor = UIColor.blackColor()
        }
    }
    @IBAction func beginTypingThree(sender: AnyObject) {
        if finalWorthField.textColor == UIColor.lightGrayColor() {
            finalWorthField.text = nil
            finalWorthField.textColor = UIColor.blackColor()
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        if (desiredGradeField.text == "") {
            desiredGradeField.text = "e.g 90";
            desiredGradeField.textColor = UIColor.lightGrayColor()
        } else if (curGradeField.text == "") {
            curGradeField.text = "e.g. 93.12";
            curGradeField.textColor = UIColor.lightGrayColor()
        } else if (curGradeField.text == "") {
            finalWorthField.text = "e.g. 15";
            finalWorthField.textColor = UIColor.lightGrayColor()
        }
        
        return false
    }
    
    
    @IBAction func calculateFinalGrade(sender: AnyObject) {
        var curGrade = (curGradeField.text as NSString).doubleValue
        var desiredGrade = (desiredGradeField.text as NSString).doubleValue
        var finalWorth = (finalWorthField.text as NSString).doubleValue
        
        var finalGrade = (100 * desiredGrade - (100 - finalWorth) * curGrade) / finalWorth;
        
        var alert = UIAlertView();
        if (finalGrade >= 90) {
            alert.title = "You have to get at least \(finalGrade)% on your final. You better get working!";

        } else if (finalGrade >= 80 && finalGrade < 90) {
            alert.title = "You have to get at least  \(finalGrade)% on your final. Don't worry, just study and you'll do fine.";

        } else if (finalGrade < 80) {
            alert.title = "You have to get at least  \(finalGrade)% on your final. Why are you even checking?? Relax...."
        }
        
        alert.addButtonWithTitle("Ok");
        alert.show();
        

        
    }
    
    
    
    
    

}
