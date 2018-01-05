//
//  RequestBean.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

enum HttpRequestMethod: String {
  case Get = "GET"
  case Post = "POST"
}

class RequestBean: RequestProtocol {
  //通过配置文件来配置参数，需要一个启动文件，带有整体网络请求属性
  var method: String { return HttpRequestMethod.Get.rawValue }
  var requestUrl: String { return "/getUserInfo"}
  var headers: [String : String] { return ["name" : "fubaoyang"] }
  var privateParameters: [String : Any] { return ["age" : "18"] }
  var timeoutForRequest: TimeInterval { return 0 }
  
  //参数检测
  func ParameterValidation() {
  
  }

}
