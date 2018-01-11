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
    //处理,检查requestBean

    //验证requestBean是否为空
    
    //验证requestBean的URL，拼接URL
    let url = self.mainUrl + requestBean.requestUrl
    
    //超时时间
    
    //获取公共参数
    var prameters = httpConfigration.netRequestPublicParams
    
    
    //拼接prameters
    for item in requestBean.privateParameters {
      prameters[item.key] = requestBean.privateParameters[item.key]
    }
    
    let handle = networkEngine.request(method: .GET, urlStr: url, params: requestBean.privateParameters, success: { response in
      //解析成字典
//      let json = (try! JSONSerialization.jsonObject(with: reponse.result.value as! Data, options: .mutableContainers)) as! NSDictionary
      var responseBean: AnyObject?
      //解析模型

      guard responseBean != nil else {
        let error = ErrorBean.responseNone
        failure(error)
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
