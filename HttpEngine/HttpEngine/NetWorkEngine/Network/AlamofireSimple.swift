//
//  AlamofireHttp.swift
//  Mauser
//
//  Created by BY_ido on 2017/12/20.
//  Copyright © 2018年 SSFBY. All rights reserved.
//

import Alamofire

class AlamofireSimple: NSObject {
  fileprivate var sessionManager: Alamofire.SessionManager
  override init() {
    self.sessionManager = SessionManager.default
  }
  
  func request(method: NetMethod,
               urlStr: String,
               params: [String: Any]? = nil,
               timeout: TimeInterval,
               success: @escaping (Data?) -> (),
               failure: @escaping (Error) -> (),
               completion: @escaping () -> ()) -> Handler{
    print("url======\(urlStr)")
    print("method======\(method)")
    print("params======\(String(describing: params))")
    
    //设置超时时间
    self.sessionManager.session.configuration.timeoutIntervalForRequest = timeout
    
    if method == .GET {
      Alamofire.request(urlStr,
                        method: HTTPMethod.post,
                        parameters: params,
                        encoding: JSONEncoding.default)
        .responseJSON(completionHandler: { (response) in
          if response.result.isSuccess {
            print("网络请求成功")
            success(response.data)
          } else {
            failure(response.result.error!)
          }
        })
    } else if method == .POST {
      Alamofire.request(urlStr,
                        method: HTTPMethod.post,
                        parameters: params,
                        encoding: JSONEncoding.default)
        .responseJSON(completionHandler: { (response) in
          if response.result.isSuccess {
            success(response.data)
            print("网络请求成功")
          } else {
            failure(response.result.error!)
          }
        })
    }
    return Handler()
  }
  
  func customSecurityPolicy() {
    sessionManager.delegate.sessionDidReceiveChallenge = { session,challenge in
      if challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust
      {
        print("服务端证书认证！")
        let serverTrust:SecTrust = challenge.protectionSpace.serverTrust!
        let certificate = SecTrustGetCertificateAtIndex(serverTrust, 0)!
        let remoteCertificateData
          = CFBridgingRetain(SecCertificateCopyData(certificate))!
        let cerPath = Bundle.main.path(forResource: "", ofType: "cer")!
        let cerUrl = URL(fileURLWithPath:cerPath)
        let localCertificateData = try! Data(contentsOf: cerUrl)
        if (remoteCertificateData.isEqual(localCertificateData) == true) {
          
          let credential = URLCredential(trust: serverTrust)
          challenge.sender?.use(credential, for: challenge)
          return (URLSession.AuthChallengeDisposition.useCredential,
                  URLCredential(trust: challenge.protectionSpace.serverTrust!))
          
        } else {
          return (.cancelAuthenticationChallenge, nil)
        }
      }
      return (.cancelAuthenticationChallenge, nil)
    }
  }
  
  
}
