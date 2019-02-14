//
//  UserDetailsVC.swift
//  MVP
//
//  Created by mac on 2/14/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class UserDetailsVC: UIViewController {

    @IBOutlet weak var nametf: UITextField!
    @IBOutlet weak var emailtf: UITextField!
    @IBOutlet weak var addresstf: UITextField!
    
    
    
    var presenter: UserDetailsPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
       presenter?.viewDidLoad()
  
    }
    

}
