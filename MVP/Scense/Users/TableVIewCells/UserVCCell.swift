//
//  UserVCCell.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class UserVCCell: UITableViewCell , UserCellView {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    func displayName(name: String) {
        nameLabel.text=name
    }
    
    func displayAddress(address: String) {
        addressLabel.text=address
    }
    
    func displayEmail(email: String) {
        emailLabel.text=email
    }

   
    
}
