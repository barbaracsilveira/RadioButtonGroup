//
//  ViewController.swift
//  RadioButtonGroup
//
//  Created by Bárbara Silveira on 10/17/2016.
//  Copyright (c) 2016 Bárbara Silveira. All rights reserved.
//

import UIKit
import RadioButtonGroup


class ViewController: UIViewController {
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet var answerList: Array<UILabel>!
    
    @IBOutlet var radioGroupViewList: Array<RadioButtonGroupView>!

    @IBAction func sendAnswer(sender: AnyObject) {
        
        validateForm()
    }
    
    func validateForm() {
        
        guard let radioDeselected = radioGroupViewList.filter({$0.getRadioButtonSelected() == nil}).first else {
            
            showResult()
            return
        }
        
        checkRadio(radioDeselected)
    }
    
    func showResult() {
        
        let arraySelected = radioGroupViewList.filter({$0.getRadioButtonSelected() != nil})
        
        for radioGroup in arraySelected {
            
            let index = radioGroupViewList.indexOf(radioGroup)
            let answerLabel = answerList[index!]
            
            answerLabel.text = radioGroup.getRadioButtonSelected()!.value
        }
    }
    
    func checkRadio(radioGroupView: RadioButtonGroupView) {
        
        guard let _ = radioGroupView.getRadioButtonSelected() else {
            blinkErrorLabel()
            return
        }
    }
    
    func blinkErrorLabel() {
        
        self.errorLabel.alpha = 1
        
        UIView.animateWithDuration(3, animations: {
            self.errorLabel.alpha = 0
        })
    }
}