
//
//  NetWorkLine.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/9.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

enum NetWorkLine {
  case InternalTest(url: String)
  case ExternalTest(url: String)
  case Production(url: String)
}

class NetWorkLineConfig {
  var baseUrl: String
  init(line: NetWorkLine) {
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




