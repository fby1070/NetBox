//
//  HttpProtocol.swift
//  Mauser
//
//  Created by BY_ido on 2017/12/20.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

enum NetMethod: String {
  case GET = "GET"
  case POST = "POST"
}

protocol HttpProtocol {
  func request(method: NetMethod,
  urlStr: String,
  params: [String: Any]?,
  success: @escaping (Any) -> (),
  failure: @escaping (Error) -> (),
  completion: @escaping () -> ()) -> Handler
}
