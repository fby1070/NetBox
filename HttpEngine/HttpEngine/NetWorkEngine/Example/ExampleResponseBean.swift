//
//  ExampleResponseBean.swift
//  HttpEngine
//
//  Created by fuby on 2017/12/26.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import UIKit
import ObjectMapper

class ExampleResponseBean: ResponseBean, Mappable {
  var name: String? = nil
  var age: Int = 0
  

  
  required init?(map: Map) {
    
  }
  
  func mapping(map: Map) {
    name <- map["name"]
    age <- map["age"]
  }
  
}
