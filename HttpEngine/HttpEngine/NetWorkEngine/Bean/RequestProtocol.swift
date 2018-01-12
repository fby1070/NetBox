//
//  RequestProtocol.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

// MARK: - 协议 RequestProtocol
import Foundation

protocol RequestProtocol {
  var requestUrl: String { get }
  var method: NetMethod { get }
  var privateParameters: [String: Any] { get }
  var timeoutForRequest: TimeInterval { get }

  /**
   * 将NetRequestDomainBean(网络请求业务Bean), 解析成发往服务器的数据字典(key要跟服务器定义的接口协议对应, value可以在这里进行二次处理, 比如密码的md5加密)
   * @return 解析业务Bean
   */
  func parseNetRequestBeanToDataDictionary() -> Dictionary<String, Any>

}

// MARK: - 扩展 RequestProtocol
extension RequestProtocol {
  var requestUrl: String {
    return "/login"
  }
  
  var method: NetMethod {
    return .GET
  }
  
  var privateParameters: [String: Any] {
    return [:]
  }
  
  var timeoutForRequest: TimeInterval {
    return 60
  }

}

