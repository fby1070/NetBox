//
//  ExampleRequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class ExampleRequestBean: RequestProtocol {
  
  var requestUrl: String { return "www.baidu.com"}
  var method: RequestMethod { return .Get}
  var parameters: [String : Any] { return ["area" : "101010100"] }
  var timeoutForRequest: TimeInterval {return 10}
  
  func formatClass() -> AnyObject {
    let response = ExampleResponseBean()
    return object_getClass(response)!
  }

}
