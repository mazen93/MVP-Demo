//
//  UserDetailsRouter.swift
//  MVP
//
//  Created by mac on 2/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
class UserDetailsRouter {
   
      
    class func createUserVC(user:user) -> UIViewController{
            let navigation=mainStoaryBoard.instantiateViewController(withIdentifier: "UserDetailsVC") as! UserDetailsView
            
//            // create view
//            let usersView=navigation.children.first as? UserDetailsView
//
//            let presenter=UserDetailsPresenter(userDetailsView: usersView, user: user)
//
//            usersView?.presenter=presenter
//
//
//            return navigation
        
        
        
        
        let userDetailsVC=mainStoaryBoard.instantiateViewController(withIdentifier: "UserDetailsVC")
        if let userDetailsView=userDetailsVC as? UserDetailsView {
            let presenter=UserDetailsPresenter(userDetailsView: userDetailsView, user: user)
            userDetailsView.presenter=presenter
        }
        return userDetailsVC
            
        }
        
        
        
        class var mainStoaryBoard: UIStoryboard {
            return UIStoryboard(name: "Main", bundle: Bundle.main)
        }
    
    
   
    
    
    
}
