//
//  SampleViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/30/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import AWSAuthUI
import AWSUserPoolsSignIn

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(0)
        presentAuthUIViewController()
        
    }

    func presentAuthUIViewController() {
        //print(1)
        let config = AWSAuthUIConfiguration()
        config.enableUserPoolsUI = true
        //print(2)
        AWSAuthUIViewController.presentViewController(with: navigationController!, configuration: config, completionHandler: {(
            _ signInProvider: AWSSignInProvider, _ error: Error?) -> Void in
            if error == nil {
                DispatchQueue.main.async(execute: {() -> Void in
                })
                
                //print(3)
            } else {
                
                print("something went wrong at sign in")
                
            }
            
        })
    }

}
