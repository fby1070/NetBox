//
//  ExampleRequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class ExampleRequestBean: RequestProtocol {
  
  var privateParameters: [String : Any] = ["userId":"592feba35660b9cce191ea7e"]
  var requestUrl: String { return "/login"}
  var method: NetMethod { return .POST}
  
}
