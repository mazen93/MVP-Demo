//
//  UserVC + PresenterDelegate.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
extension UserVC:UsersView{
   
    
    func showIndicator() {
         refreshIndicator.startAnimating()
    }
    
    func hideIndicator() {
        refreshIndicator.stopAnimating()
    }
    
    func fetchingDataSuccess() {
        table.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    
    
    func navigateToUserDetails(user: user) {
       // navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
    
}
