//
//  ExampleRequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class ExampleRequestBean: RequestProtocol {
  
  var privateParameters: [String : Any] = [:]
  var requestUrl: String { return "/"}
  var method: NetMethod { return .GET}
  var parameters: [String : Any] { return ["area" : "101010100"] }
  var timeoutForRequest: TimeInterval {return 10}
  
}
