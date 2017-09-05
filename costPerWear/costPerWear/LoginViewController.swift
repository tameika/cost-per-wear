//
//  LoginViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/17/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import AWSCore
import AWSCognito


class LoginViewController: UIViewController {
    
    var loginView = LoginView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.salmon
        loginView = LoginView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        
        view.addSubview(loginView)
        

    }

    
    func loginBtnPressed() {
        
        print("logging in")
    }
    
    
    
    
    
    
}
