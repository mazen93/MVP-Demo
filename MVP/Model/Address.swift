//
//  Address.swift
//  MVP
//
//  Created by mac on 2/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import ObjectMapper
class Address :Mappable{
    private var street:String!
    private var suite:String!
  
    
    var _street:String{
        get{
            if street == nil{
                street=""
            }
            return street
        } set{
            street = newValue
        }
    }
    
    var _suite:String{
        get{
            if suite == nil{
                suite=""
            }
            return suite
        } set{
            suite = newValue
        }
    }
    
     init() {}
 
    
    
    required init(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        _street <- map["street"]
        _suite <- map["suite"]
        
    }
    
}
