//
//  UserDetails+PresenterDelegate.swift
//  MVP
//
//  Created by mac on 2/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
extension UserDetailsVC:UserDetailsView{
    
    func displayName(name: String) {
        nametf.text=name
    }
    
    func displayAddress(address: String) {
        addresstf.text=address
        
    }
    
    func displayEmail(email: String) {
        emailtf.text=email
    }
    

    
    
    
    
    
    
}
