//
//  HttpConfigration.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/3.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Foundation
//网络框架
enum RequestHttpChannel {
  case Almofire
}

//解析方式
enum RequestHttpParse {
  case JSON
}
//加密方式
enum RequestHttpEncryption {
  case MD5
}

class HttpConfigration {
  static let httpConfigration = HttpConfigration()
  var requestMainURL: String?
  var header: [String:Any] = [:]
  var publicPrameters: [String:Any] = [:]
  var requestTimeout: TimeInterval = 60
  var requestHttpChannel: RequestHttpChannel = .Almofire
  var requestHttpParse: RequestHttpParse = .JSON
  var requestHttpEncryption: RequestHttpEncryption? = nil
}
