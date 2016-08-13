//
//  TableViewCell.swift
//  test1
//
//  Created by Angela Cartagena on 13/08/2016.
//  Copyright © 2016 acicartagena. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: Label! {
        didSet {
            descriptionLabel.textStyle = .body
        }
    }
    @IBOutlet weak var titleLabel: Label! {
        didSet {
            titleLabel.textStyle = .title1
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static let reuseIdentifier: String = "TableViewCell"

}
