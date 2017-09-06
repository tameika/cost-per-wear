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


class LoginViewController: UIViewController, LoginViewDelegate {
    
    var loginView = LoginView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.chocoRose
        loginView = LoginView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        loginView.delegate = self 
        view.addSubview(loginView)
        

    }

    
    func loginBtnPressed() {
        print("login pressed")
        let categoryVC = CategorySelectionViewController()
        navigationController?.pushViewController(categoryVC, animated: true)
        
        print("logging in")
    }
    
    
    
    
    
    
}
