//
//  LoginViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/17/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import AWSAuthCore
import AWSAuthUI
import AWSUserPoolsSignIn



class LoginViewController: UIViewController, LoginViewDelegate {
    
    var loginView = LoginView()
    var blurView: Blurview!
    //let image = Blurview()
    var loginImage = LoginImageView()

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //navigationItem.hidesBackButton = true
        //navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isTranslucent = true 
        loginView.animateLayer()

        
    }
    
    override func viewDidLayoutSubviews() {
        loginView.setUpBorder()

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.setUpLayer()

        view.backgroundColor = UIColor.clear
        
       loginImage = LoginImageView(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        view.addSubview(loginImage)
        
        blurView = Blurview(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: 667.0))
        //view.addSubview(blurView)
        loginView = LoginView.init(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        loginView.delegate = self
        //blurView.blurEffectView.contentView.addSubview(loginView)
        view.addSubview(loginView)
        

    }

    
    func loginBtnPressed() {
        let categoryVC = CategorySelectionViewController()
        navigationController?.pushViewController(categoryVC, animated: true)
        
    }
    
    
    
    
    
    
}
