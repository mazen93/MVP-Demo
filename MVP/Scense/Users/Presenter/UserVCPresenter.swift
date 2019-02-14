//
//  UserVCPresenter.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation



protocol UsersView: class {
    
    var presenter:UserVCPresenter?{get set}
    func showIndicator()
    func hideIndicator()
    func fetchingDataSuccess()
    func showError(error:String)
    // befor router
    //func navigateToUserDetails(user:user)
}




protocol UserCellView {
    func displayName(name:String)
    func displayAddress(address:String)
    func displayEmail(email:String)
    
    
}

class UserVCPresenter {

    private weak var view:UsersView?
    private let interactor:UsersInteractor
    private let router:UserVCRouter
    private var users=[user]()
    
    
    // assign view to presenter
    // dependise injection -> all prop is private
    init(view:UsersView?,interactor:UsersInteractor,router:UserVCRouter) {
        self.view=view
        self.interactor=interactor
        self.router=router
    }
    
    

    func viewDidLoad(){
    getUsers()
    }
    
    func getUsers() {
        
        view?.showIndicator()
        interactor.getUsers { [weak self](users, error) in
            guard let self=self else{return}
            
            self.view?.hideIndicator()
            if let error = error {
                self.view?.showError(error: error.localizedDescription)
            }else{
                guard let users = users else{return}
                self.users=users
                self.view?.fetchingDataSuccess()
            }
        }
    }
    
    
    
    func getUsersCount() -> Int {
        return users.count
    }
    
    
    
    
    func configration(cell:UserCellView,for index:Int) {
        
        let user=users[index]
        cell.displayName(name: user._name)
        cell.displayEmail(email: user._email)
        cell.displayAddress(address: "\(user._address._street) \(user._address._suite)")
        
        
    }
    
    
    
    //
    
    func didSelectRow(index:Int)  {
          let user=users[index]
        router.navigateToUserDetails(view: view, user: user)
        
        
        // before router
       // view?.navigateToUserDetails(user: user)
    }
}
