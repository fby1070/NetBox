//
//  Handle.swift
//  Mauser
//
//  Created by BY_ido on 2017/12/20.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Foundation

public protocol Handle {
  var isCancelled: Bool { get }
  func cancel()
}

class Handler: Handle {
  
  var simapleHandler: Handle = DefaultHandler()
  
  var isCancelled: Bool { return simapleHandler.isCancelled }
  
  func cancel() {
    simapleHandler.cancel()
  }
}

class DefaultHandler: Handle {
  
  var isCancelled = false
  func cancel() {
    isCancelled = true
  }
}

