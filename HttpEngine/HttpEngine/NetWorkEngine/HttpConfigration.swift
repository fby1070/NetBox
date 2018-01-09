//
//  HttpConfigration.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/3.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Foundation

protocol HttpConfigProtocol {
  
  // 业务Bean请求时,需要传递到服务器的公共参数
  var netRequestPublicParams: Dictionary<String, Any> { get }
  
  ///自定义的http headers
  var customHttpHeaders: Dictionary<String, Any> { get }
  
  ///自定义的超时时间
  var customTimeOut: TimeInterval? { get }
  
  ///从服务器返回的数据中, 获取 data 部分(真正的有效数据)
  func getServerResponseDataValidityDataFunction(data: Dictionary<String, Any>) -> Any?
  
  // 打包post数据(可在这里进行数据的加密工作)
  func postDataPackageFunction(paramsDictionary: Dictionary<String, Any>) -> Data?
}

class HttpConfigration: HttpConfigProtocol {
  var netRequestPublicParams: Dictionary<String, Any> {
    return [:]
  }
  
  var customHttpHeaders: Dictionary<String, Any> {
    return [:]
  }
  
  static let httpConfigration = HttpConfigration()
  
  var customTimeOut: TimeInterval? {
    return 10
  }
  
  func getServerResponseDataValidityDataFunction(data: Dictionary<String, Any>) -> Any? {
    return nil
  }
  
  func postDataPackageFunction(paramsDictionary: Dictionary<String, Any>) -> Data? {
    return nil
  }
  

}
