//
//  RadioButton.swift
//  OUDGTests
//
//  Created by Bárbara Silveira on 10/16/16.
//  Copyright © 2016 Globosat. All rights reserved.
//

import UIKit

public class RadioButton: UIButton {

    public var value: String!
    
    public func getTitle() -> String? {
        return titleLabel?.text
    }
}
