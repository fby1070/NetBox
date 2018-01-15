//
//  NetConfigration.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/9.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

class NetConfigration {
  static let netConfigration = NetConfigration()
  var httpEngine: HttpEngine
  var netHelper: HttpConfigProtocol
  var netLine: NetWorkLineConfig
  init() {
    netHelper = ExampleHelper()
    netLine = NetWorkLineConfig(line: NetWorkLine.InternalTest(url: "http://192.168.2.29:3011"))
    httpEngine = HttpEngine(netHelper: netHelper, mainUrl: netLine.baseUrl)
  }
  
  @discardableResult
  func request(_ requestBean: RequestProtocol, responseBean: ResponseProtocol, success: @escaping (AnyObject) -> (), failure: @escaping (Error) ->(), complete: @escaping () -> () ) -> Handler {
    return httpEngine.request(requestBean, responseBean: responseBean, success: success, failure: failure, complete: complete)
  }
}
