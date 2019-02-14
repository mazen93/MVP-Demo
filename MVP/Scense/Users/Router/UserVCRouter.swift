//
//  UserVCRouter.swift
//  MVP
//
//  Created by mac on 2/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
class UserVCRouter {
    class func createUserVC() -> UIViewController{
        let navigation=mainStoaryBoard.instantiateViewController(withIdentifier: "navigationController")
        
        // create view
        let usersView=navigation.children.first as? UsersView
        // create interactor object
        let interactor=UsersInteractor()
        
        
        let router=UserVCRouter()
        // create presenter

        let presenter=UserVCPresenter(view: usersView, interactor: interactor, router: router)
        
        usersView?.presenter=presenter
        
        
        return navigation
        
        
    }
    
    
    
    class var mainStoaryBoard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    
    
    
    func navigateToUserDetails(view:UsersView?,user:user)  {
        let userDetailsView=UserDetailsRouter.createUserVC(user: user)
        
        
        // push
        if let vc=view as? UIViewController{
            vc.navigationController?.pushViewController(userDetailsView, animated: true)
        }
    }
}
