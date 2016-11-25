//
//  ViewController.swift
//  AlamofireUse
//
//  Created by 古今 on 2016/11/25.
//  Copyright © 2016年 夜风易冷. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        /*
        Alamofire.request("http://httpbin.org/get", method: .get).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            print(result)
        }*/
        
        /*
        Alamofire.request("http://httpbin.org/post", method: .post, parameters: ["name" : "hello"]).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            print(result)
        }*/
        
        NetworkTools.requestData(type: .GET, URLString: "http://httpbin.org/get") { (result) in
            print(result)
            print("===============")
        }
        
        NetworkTools.requestData(type: .POST, URLString: "http://httpbin.org/post", parameters: ["name" : "hello"]) { (result) in
            print(result)
        }
    }


}

