//
//  RequestError.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

enum ErrorBean: Error {
  case jsonMapping
  case objectMapping(Swift.Error)
  case responseNone                                 // 返回结果中没有httpurlresponse对象
  case unpackedResponseDataFailed                   // 解包服务器端返回的 生数据(可能加密) 失败
  case responseParseNil                             // 网络结果转为模型时失败，返回nil
  case networkError(Error)                          // 引擎提供的错误
  case statusCode
  case parameterEncoding(Swift.Error)
  case underlying(Swift.Error)
  
}

extension ErrorBean: LocalizedError {
  public var errorDescription: String? {
    switch self {
    case .jsonMapping:
      return ""
    case .objectMapping:
      return ""
    case .responseNone:
      return "服务器没有返回任何数据给客户端."
    case .unpackedResponseDataFailed:
      return "解包服务器端返回的 生数据(可能加密) 失败"
    case .responseParseNil:
      return ""
    case .networkError(let error):
      return error.localizedDescription
    case .statusCode:
      return ""
    case .parameterEncoding(let error):
      return "错误 \(error.localizedDescription)"
    case .underlying(let error):
      return error.localizedDescription
    }
  }
}
