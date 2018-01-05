//
//  RequestError.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

// 网络错误枚举
enum RequestError: Error {
  case responseNone                                   // 返回结果中没有httpurlresponse对象
  case responseParseNil(Any)                          // 网络结果转为模型时失败，返回nil
  case responseCodeError(RequestErrorModel)           // 网络状态码不是200，转为错误模型后传给失败回调
  case networkError(Error)                          // 引擎提供的错误
}
extension RequestError {
  @discardableResult
  func debugPrint() -> RequestError {
    #if DEBUG
      var result = ""
      switch self {
      case RequestError.responseNone:
        result = "未返回 HTTPURLResponse"
      case RequestError.responseParseNil(let json):
        result = "无法解析的json数据-\(json)"
      case RequestError.responseCodeError(let errorModel):
        result = errorModel.description
      case RequestError.networkError(let alamofireError):
        result = alamofireError.localizedDescription
      }
      //打印错误日志
//      "RequestError:\(result)".ext_debugPrint()
      print(result)
    #endif
    return self
  }
}
