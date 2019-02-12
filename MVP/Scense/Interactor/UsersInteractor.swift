//
//  UsersInteractor.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class UsersInteractor {
    
    func getUsers(completionHandler: @escaping ([user]?, Error?) -> ()) {
        request("https://jsonplaceholder.typicode.com/users").responseArray { (response: DataResponse<[user]>) in
            let result = response.result
            switch result {
            case .success(let users):
                completionHandler(users, nil)
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
}
