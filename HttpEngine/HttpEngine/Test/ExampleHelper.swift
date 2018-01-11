//
//  ExampleHelper.swift
//  HttpEngine
//
//  Created by fuby on 2018/1/10.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Foundation

class ExampleHelper: HttpConfigProtocol {
  static let httpConfigration = ExampleHelper()
  var netRequestPublicParams: Dictionary<String, Any> {
    return [:]
  }
  
  var customHttpHeaders: Dictionary<String, Any> {
    return [:]
  }
  
  
  var customTimeOut: TimeInterval? {
    return 10
  }
  
  func getServerResponseDataValidityDataFunction(data: Dictionary<String, Any>) -> Any? {
    return nil
  }
  
  func postDataPackageFunction(paramsDictionary: Dictionary<String, Any>) -> Data? {
    return nil
  }
  
  
}
