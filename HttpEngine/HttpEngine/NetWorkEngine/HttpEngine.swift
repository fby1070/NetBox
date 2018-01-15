//
//  HttpEngine.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

class HttpEngine {
  var httpConfigration: HttpConfigProtocol
  var networkEngine: NetworkEngine
  var mainUrl: String
  
  init(netHelper: HttpConfigProtocol, mainUrl: String) {
    self.httpConfigration = netHelper
    self.mainUrl = mainUrl
    self.networkEngine = NetworkEngine()
  }
  
  @discardableResult
  func request(_ requestBean: RequestProtocol, responseBean: ResponseProtocol, success: @escaping (AnyObject) -> (), failure: @escaping (Error) ->(), complete: @escaping () -> () ) -> Handler {
    
    var errorBean: ErrorBean? = nil
    
    //验证requestBean的URL，拼接URL
    let url = self.mainUrl + requestBean.requestUrl
    
    //超时时间
    var timeout = httpConfigration.customTimeOut != requestBean.timeoutForRequest ? httpConfigration.customTimeOut:requestBean.timeoutForRequest
    if timeout == nil {
      timeout = 60
    }
    
    //获取公共参数
    var prameters = httpConfigration.netRequestPublicParams
    
    //拼接私有prameters
    for item in requestBean.privateParameters {
      prameters[item.key] = requestBean.privateParameters[item.key]
    }
    
    let handle = networkEngine.request(method: requestBean.method, urlStr: url, params: requestBean.privateParameters,timeout: timeout!, success: { responseData in
      guard responseData != nil else {
        errorBean = ErrorBean.responseNone  //服务器没有返回任何数据给客户端.
        failure(errorBean!)
        return
      }
      
      //解析成字典
      let responseDic = self.httpConfigration.netResponseDataToDictionary(responseData: responseData!)
      guard responseDic != nil else {
        errorBean = ErrorBean.responseParseNil  //网络结果转为模型时失败，返回nil.
        failure(errorBean!)
        return
      }
      
      var responseBean: AnyObject?
      //解析模型

      guard responseBean != nil else {
        errorBean = ErrorBean.responseNone
        failure(errorBean!)
        return
      }

      success(responseBean!)
    }, failure: { (error) in
      
      failure(error)
    }) {
      complete()
    }
    return handle
  }
  
}
