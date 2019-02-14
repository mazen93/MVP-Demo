//
//  UserDetailsPresenter.swift
//  MVP
//
//  Created by mac on 2/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

protocol UserDetailsView : class{
    var presenter:UserDetailsPresenter?{get set}
    func displayName(name:String)
    func displayAddress(address:String)
    func displayEmail(email:String)
}



class UserDetailsPresenter {
    private weak var vieew:UserDetailsView?
    
    private var user:user
    init(userDetailsView:UserDetailsView?,user:user) {
        self.vieew=userDetailsView
        self.user=user
    }
    
    
    func viewDidLoad()  {
        vieew?.displayName(name: user._name)
        vieew?.displayEmail(email: user._email)
        vieew?.displayAddress(address: "\(user._address._street) \(user._address._suite)")
    }
}
