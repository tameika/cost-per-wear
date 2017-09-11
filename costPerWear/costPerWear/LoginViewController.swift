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
    var blurView: Blurview!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.isHidden = true
        loginView.setUpLayer()
        
    }
    
    override func viewDidLayoutSubviews() {
        loginView.setUpBorder()

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.deepTealNew
        
        view.addSubview(blurView)
        print("4")
        loginView = LoginView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        print("5")
        loginView.delegate = self
        print("7")
        view.addSubview(loginView)
        print("8")

    }

    
    func loginBtnPressed() {
        let categoryVC = CategorySelectionViewController()
        navigationController?.pushViewController(categoryVC, animated: true)
        
    }
    
    
    
    
    
    
}
