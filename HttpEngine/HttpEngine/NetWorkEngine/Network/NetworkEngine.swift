//
//  NetworkEngine.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import UIKit

class NetworkEngine: HttpProtocol {
  var alamofireSimple = AlamofireSimple()
  init() {
    
  }
  
  func request(method: HTTPTOOLMethod, urlStr: String, params: [String : AnyObject]?, success: @escaping () -> (), failure: @escaping (Error) -> (), completion: @escaping () -> ()) -> Handler {
    return alamofireSimple.request(method: method,
                                   urlStr: urlStr,
                                   params: params,
                                   success: success,
                                   failure: failure,
                                   completion: completion)
  }
  
}
