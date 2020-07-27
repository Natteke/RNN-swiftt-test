//
//  ViewController.swift
//  ios2
//
//  Created by Андрей Пономаренко on 7/27/20.
//  Copyright © 2020 Андрей Пономаренко. All rights reserved.
//

import UIKit;
import React;
import ReactNativeNavigation

class ViewController: UIViewController, RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        return URL(string: "http://localhost:8081/index.bundle?platform=ios");
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: {(_) in
            let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
            print(123);
            ReactNativeNavigation.bootstrap( jsCodeLocation!, launchOptions: nil, bridgeManagerDelegate: self);
        })
    }
}

