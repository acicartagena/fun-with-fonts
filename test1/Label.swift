//
//  Label.swift
//  test1
//
//  Created by Angela Cartagena on 13/08/2016.
//  Copyright © 2016 acicartagena. All rights reserved.
//

import UIKit


class Label: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    var textStyle: TextStyle = .body {
        didSet {
            font = UIFont(textStyle: textStyle)
        }
    }
    
    func commonInit() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(Label.didChangePreferredContentSize), name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }
    
    func didChangePreferredContentSize() {
        font = UIFont(textStyle: textStyle)
    }
}
