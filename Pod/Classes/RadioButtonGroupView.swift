//
//  RadioButtonGroupView.swift
//  OUDGTests
//
//  Created by Bárbara Silveira on 10/15/16.
//  Copyright © 2016 Globosat. All rights reserved.
//

import UIKit


public class RadioButtonGroupView: UIView {
    
    internal var selectedRadioImage: UIImage?
    
    internal var deselectedRadioImage: UIImage?
    
    @IBOutlet var radioButtonGroupList: Array<UIButton>!
    
    @IBAction func radioTouched(sender: AnyObject) {
        
        guard let radio = sender as? UIButton else {return}
        
        guard radio.selected != true else {
            radio.selected = false
            return
        }
        
        if let radioSelect = radioButtonGroupList.filter({$0.tag == radio.tag}).first {
            
            radioSelect.selected = true
            radioSelect.setImage(selectedRadioImage, forState: UIControlState.Selected)
        }
        
        for radioDeselect in radioButtonGroupList.filter({$0.tag != radio.tag}) {
            
            radioDeselect.selected = false
            radioDeselect.setImage(deselectedRadioImage, forState: UIControlState.Normal)
        }
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        setRadioTag()
    }
    
    internal func setRadioTag() {
        
        for radioButton in radioButtonGroupList {
            radioButton.tag = ((radioButtonGroupList.indexOf(radioButton) ?? 0) + 1) * 10000
        }
    }
    
    public func deselectAllRadios() {
        
        for radioButton in radioButtonGroupList {
            radioButton.selected = false
        }
    }
    
    public func getRadioSelected() -> UIButton? {
        
        return radioButtonGroupList.filter({$0.selected == true}).first
    }
    
    public func getRadioButtonSelected() -> RadioButton? {
        
        return getRadioSelected() as? RadioButton
    }
}