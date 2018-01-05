//
//  HttpProtocol.swift
//  Mauser
//
//  Created by BY_ido on 2017/12/20.
//  Copyright © 2017年 BUBUKO. All rights reserved.
//

enum HTTPTOOLMethod: String {
  case GET = "GET"
  case POST = "POST"
}

protocol HttpProtocol {
  func request(method: HTTPTOOLMethod,
  urlStr: String,
  params: [String: AnyObject]?,
  success: @escaping () -> (),
  failure: @escaping (Error) -> (),
  completion: @escaping () -> ()) -> Handler
}
