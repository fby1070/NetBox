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
  //参数检测
  func ParameterValidation()
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
    return ["userId":"592feba35660b9cce191ea7e"]
  }
  
  var timeoutForRequest: TimeInterval {
    return 60
  }
  
  func ParameterValidation() {
    
  }
}

