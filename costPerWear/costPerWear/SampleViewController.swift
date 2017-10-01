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

        presentAuthUIViewController()
        
    }

    func presentAuthUIViewController() {
        
        let config = AWSAuthUIConfiguration()
        config.enableUserPoolsUI = true
        
        AWSAuthUIViewController.presentViewController(with: navigationController!, configuration: config, completionHandler: {(
            _ signInProvider: AWSSignInProvider, _ error: Error?) -> Void in
            if error == nil {
                DispatchQueue.main.async(execute: {() -> Void in
                })
                
                
            } else {
                
                print("something went wrong at sign in")
                
            }
            
        })
    }

}
