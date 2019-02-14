//
//  UserVC+Tableview.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
extension UserVC:UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    
    func SetUpTableView() {
       table.delegate=self
        table.dataSource=self
        table.register(UINib(nibName: "UserVCCell", bundle: nil), forCellReuseIdentifier: "UserVCCell")
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getUsersCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell=table.dequeueReusableCell(withIdentifier: "UserVCCell", for: indexPath) as! UserVCCell
        
        presenter?.configration(cell: cell, for: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectRow(index: indexPath.row)
    }
    
    
    
    
}
