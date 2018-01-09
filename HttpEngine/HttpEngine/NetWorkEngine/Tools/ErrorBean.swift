//
//  RequestError.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

// 网络错误枚举
enum ErrorBean: Error {
  case jsonMapping
  case objectMapping(Swift.Error)
  case responseNone                                   // 返回结果中没有httpurlresponse对象
  case responseParseNil                          // 网络结果转为模型时失败，返回nil
  case networkError(Error)                          // 引擎提供的错误
  case statusCode
  case parameterEncoding(Swift.Error)
  case underlying(Swift.Error)
  
}
// MARK: - Error Descriptions

extension ErrorBean: LocalizedError {
  public var errorDescription: String? {
    switch self {
    case .jsonMapping:
      return "Failed to map data to JSON."
    case .objectMapping:
      return "Failed to map data to a Decodable object."
    case .responseNone:
      return ""
    case .responseParseNil:
      return ""
    case .networkError(let error):
      return error.localizedDescription
    case .statusCode:
      return "Status code didn't fall within the given range."
    case .parameterEncoding(let error):
      return "Failed to encode parameters for URLRequest. \(error.localizedDescription)"
    case .underlying(let error):
      return error.localizedDescription
    }
  }
}
