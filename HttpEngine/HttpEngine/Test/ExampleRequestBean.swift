//
//  ExampleRequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class ExampleRequestBean: RequestProtocol {
  func parseNetRequestBeanToDataDictionary() -> Dictionary<String, Any> {
    return ["userId":"592feba35660b9cce191ea7e"]
  }
  
  
  var privateParameters: [String : Any] = ["phone":"15094501070"]
  var requestUrl: String { return "/postmancode"}
  var method: NetMethod { return .POST}
  
}
