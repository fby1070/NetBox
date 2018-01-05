//
//  BaseModel.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/2.
//  Copyright © 2018年 SSFBY. All rights reserved.
//
import Foundation
import ObjectMapper

class BaseModel:NSObject, ResponseProtocol, Mappable {
  required init?(map: Map) {
    
  }
  
  func mapping(map: Map) {
    
  }
  
  func jsonToModel(dic: [String : Any]) -> AnyObject? {
    return nil
  }
  
  func formatClass() -> AnyObject? {
    return nil
  }

  
  
}
