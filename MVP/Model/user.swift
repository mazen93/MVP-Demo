//
//  user.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import ObjectMapper
class user:Mappable{
    
    
    private var name:String!
    private var address:Address!
    private var email:String!
    
    var _name:String{
        get{
            if name == nil{
                name=""
            }
            return name
        } set{
            name = newValue
        }
    }
    
    var _address:Address{
        get{
            if address == nil{
                address=Address()
            }
            return address
        } set{
            address = newValue
        }
    }
    
    
    var _email:String{
        get{
            if email == nil{
                email=""
            }
            return email
        } set{
            email = newValue
        }
    }
    
    
    required init(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        _name <- map["name"]
        _email <- map["email"]
        _address <- map["address"]
    }
    
    
}
