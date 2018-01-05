//
//  ViewController.swift
//  HttpEngine
//
//  Created by BY_ido on 2017/12/21.
//  Copyright © 2017年 SSFBY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let bean = ExampleRequestBean()
    HttpEngine().request(bean, success: {
       print("请求成功")
    }, failure: { (error) in
       print("请求失败")
    }) {
       print("请求完成")
    }

  }




}

