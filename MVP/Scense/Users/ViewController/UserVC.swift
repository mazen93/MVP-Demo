//
//  ViewController.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class UserVC: UIViewController {

    @IBOutlet weak var refreshIndicator: UIActivityIndicatorView!
    @IBOutlet weak var table: UITableView!
    
    
    var presenter:UserVCPresenter?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        SetUpTableView()
      //  presenter=UserVCPresenter(view: self)
        presenter?.viewDidLoad()
    }


}

