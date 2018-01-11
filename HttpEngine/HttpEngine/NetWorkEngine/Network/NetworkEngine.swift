//
//  NetworkEngine.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//



class NetworkEngine: HttpProtocol {
  var alamofireSimple = AlamofireSimple()
  init() {
    
  }
  
  func request(method: NetMethod, urlStr: String, params: [String : Any]?, success: @escaping (Any) -> (), failure: @escaping (Error) -> (), completion: @escaping () -> ()) -> Handler {
    return alamofireSimple.request(method: method,
                                   urlStr: urlStr,
                                   params: params,
                                   success: success,
                                   failure: failure,
                                   completion: completion)
  }
  
}
