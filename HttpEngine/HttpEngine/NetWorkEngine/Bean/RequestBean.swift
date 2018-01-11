//
//  RequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class RequestBean: RequestProtocol {
  
  var method: NetMethod { return .GET }
  var requestUrl: String { return "/getUserInfo"}
  var privateParameters: [String : Any] { return ["age" : "18"] }
  var timeoutForRequest: TimeInterval { return 0 }
  
  //参数检测
  func ParameterValidation() {
  
  }

}
