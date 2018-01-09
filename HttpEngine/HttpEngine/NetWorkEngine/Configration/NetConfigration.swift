//
//  NetConfigration.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/9.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

class NetConfigration {
  static let netConfigration = NetConfigration()
  var baseUrl: String?
  var internalTestUrl = NetWorkLine.InternalTest(url: "http://192.168.2.29:8091")
  var externalTestUrl = NetWorkLine.ExternalTest(url: "http://192.168.2.29:8091")
  var productionUrl = NetWorkLine.Production(url: "http://192.168.2.29:8091")
  
  func networkLine(line: NetWorkLine) {
    switch line {
    case NetWorkLine.InternalTest(let url):
      baseUrl = url
    case NetWorkLine.ExternalTest(let url):
      baseUrl = url
    case NetWorkLine.Production(let url):
      baseUrl = url
    }
  }
}
