//
//  RequestErrorModel.swift
//  Mara
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation
//import ObjectMapper

class RequestErrorModel: NSObject {
    
    var error: RequestErrorErrorModel?
    
//    required init?(map: Map) {
//    }
//
//    func mapping(map: Map) {
//        error <- map["error"]
//    }
}

extension RequestErrorModel {
//    var description: String {
//        let message = "\(type(of: self)) \(String(describing: self.error)))"
//        return message
//    }
}

class RequestErrorErrorModel: NSObject {
    
    var code: Int?
    var message: String?
    var type: String?
    var sub_code: String?
    var prompt_info: String?
    var prompt_type: String?
    
//    required init?(map: Map) {
//    }
  
//    func mapping(map: Map) {
//        code            <- map["code"]
//        message         <- map["message"]
//        type            <- map["type"]
//        sub_code        <- map["sub_code"]
//        prompt_info     <- map["prompt_info"]
//        prompt_type     <- map["prompt_type"]
//    }
}

//extension RequestErrorErrorModel: CustomStringConvertible {
//    var description: String {
//        let message = "\(type(of: self)) \(String(describing: self.code)) \(String(describing: self.message))  \(String(describing: self.type)) \(String(describing: self.sub_code)) \(String(describing: self.prompt_info)) \(String(describing: self.prompt_type)))"
//        return message
//    }
//}

