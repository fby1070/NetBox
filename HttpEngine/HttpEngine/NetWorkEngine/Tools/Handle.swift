//
//  Handle.swift
//  Mauser
//
//  Created by BUBUKO on 2017/11/24.
//  Copyright © 2017年 BUBUKO. All rights reserved.
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

