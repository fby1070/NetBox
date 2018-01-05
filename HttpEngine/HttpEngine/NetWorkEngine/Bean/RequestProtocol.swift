//
//  RequestProtocol.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

// MARK: - 协议 RequestProtocol
import Foundation

protocol RequestProtocol {
  var requestUrl: String { get }
  var method: String { get }
  var privateParameters: [String: Any] { get }
  var headers: [String: String] { get }
  var timeoutForRequest: TimeInterval { get }

}

