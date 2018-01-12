//
//  ResponseProtocol.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/3.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

// MARK: - 协议 ResponseProtocol
protocol ResponseProtocol {
  func isNetRespondBeanValidity() -> Bool
  func complete(requestBean:RequestProtocol)
}

// MARK: - 扩展 ResponseProtocol
extension ResponseProtocol{
  func complete(requestBean:RequestProtocol) {
    
  }
}


