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
        AWSAuthUIViewController.presentViewController(with: self.navigationController!, configuration: config, completionHandler: {(
            _ signInProvider: AWSSignInProvider, _ error: Error?) -> Void in
            if error == nil {
                DispatchQueue.main.async(execute: {() -> Void in
                    
                    let categoryVC = CategorySelectionViewController()
                    self.navigationController?.pushViewController(categoryVC, animated: true)
                })
                
            } else {
                
                print("something went wrong at sign in")
                
            }
            
        })
    }
    
}


extension AWSAuthUIViewController {
    
}
