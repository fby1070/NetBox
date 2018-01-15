//
//  NetworkEngine.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class NetworkEngine: HttpProtocol {
  var alamofireSimple = AlamofireSimple()
  
  func request(method: NetMethod, urlStr: String, params: [String : Any]?,timeout: TimeInterval, success: @escaping (Data?) -> (), failure: @escaping (Error) -> (), completion: @escaping () -> ()) -> Handler {
    return alamofireSimple.request(method: method,
                                   urlStr: urlStr,
                                   params: params,
                                   timeout: timeout,
                                   success: success,
                                   failure: failure,
                                   completion: completion)
  }
  
}
