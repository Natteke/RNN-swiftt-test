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
        return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: "")!
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapClickMe(_ sender: Any) {
        let jsCodeLocation = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: "")!
        ReactNativeNavigation.bootstrap(jsCodeLocation, launchOptions: nil);
    }
    
}

