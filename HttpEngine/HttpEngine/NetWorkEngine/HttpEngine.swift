//
//  HttpEngine.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import Foundation

typealias NetworkFailure = (_ error: RequestError) -> Void

class HttpEngine {
  let net = AlamofireSimple()
  var networkFailure: NetworkFailure?
  var httpConfigration: HttpConfigration
  var networkEngine: NetworkEngine
  
  init() {
    httpConfigration = HttpConfigration()
    networkEngine = NetworkEngine()
  }
  
  
  @discardableResult
  func request(_ requestBean: RequestProtocol, responseBean: ResponseProtocol, success: @escaping (AnyObject) -> (), failure: @escaping (Error) ->(), complete: @escaping () -> () ) -> Handler {
    //处理,检查requestBean

    //验证requestBean是否为空
    
    //验证requestBean的URL，拼接URL
    
    //超时时间
    
    //获取公共参数
    var prameters = httpConfigration.publicPrameters
    //拼接prameters
    for item in requestBean.privateParameters {
      prameters[item.key] = requestBean.privateParameters[item.key]
    }
    
    let handle = net.request(method: .GET, urlStr: requestBean.requestUrl, params: prameters as [String : AnyObject], success: { reponse in
      //解析成字典
      let json = (try! JSONSerialization.jsonObject(with: reponse.result.value as! Data, options: .mutableContainers)) as! NSDictionary
//      let dataDic = json["data"] as! [String : AnyObject]
      var response: AnyObject?
      //解析模型
//      response = responseBean.init(dic: dataDic)
//      response = responseBean(dataDic)
      guard response != nil else {
        return
      }

      success(response!)
    }, failure: { (error) in
      
      failure(error)
    }) {
      complete()
    }
    
    return handle
  }
  
}
