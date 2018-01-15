//
//  HttpProtocol.swift
//  Mauser
//
//  Created by BY_ido on 2017/12/20.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Foundation

enum NetMethod: String {
  case GET = "GET"
  case POST = "POST"
}

protocol HttpProtocol {
  func request(method: NetMethod,
  urlStr: String,
  params: [String: Any]?,
  timeout: TimeInterval,
  success: @escaping (Data?) -> (),
  failure: @escaping (Error) -> (),
  completion: @escaping () -> ()) -> Handler
}
