//
//  LoginView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/31/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Spring


protocol LoginViewDelegate: class {
    
    func loginBtnPressed()
}


class LoginView: UIView {
    //var backgroundImage: UIImageView!

    var usernameField: UITextField!
    var passwordField: UITextField!
    var loginBtn: UIButton!
    
    weak var delegate: LoginViewDelegate!
    
    var fieldForLayer: UITextField!
    var l: CALayer {
        return usernameField.layer
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
//        var backgroundImage: UIImageView {
//            let backgroundImage = UIImageView()
//            backgroundImage.translatesAutoresizingMaskIntoConstraints = false
//            backgroundImage.backgroundColor = UIColor.eggplantMute
//            addSubview(backgroundImage)
//            return backgroundImage
//        }
        
        
        usernameField = UITextField(frame: CGRect.zero)
        usernameField.isUserInteractionEnabled = true
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.layer.cornerRadius = 20.0
        usernameField.backgroundColor = UIColor.clear
        usernameField.layer.borderWidth = 2.0
        usernameField.layer.borderColor = UIColor.bone.cgColor
        usernameField.placeholder = "username"
        usernameField.textAlignment = .center
        usernameField.clearsOnBeginEditing = true
        addSubview(usernameField)
        //backgroundImage.addSubview(usernameField)
        usernameField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(40.0)
            make.width.equalTo(250.0)
        }
        
        
        passwordField = UITextField(frame: CGRect.zero)
        //passwordField.delegate = self
        passwordField.isUserInteractionEnabled = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.layer.cornerRadius = 20.0
        passwordField.backgroundColor = UIColor.clear
        passwordField.layer.borderWidth = 2.0
        passwordField.layer.borderColor = UIColor.bone.cgColor
        passwordField.placeholder = "password"
        passwordField.textAlignment = .center
        passwordField.clearsOnBeginEditing = true
        addSubview(passwordField)
        //backgroundImage.addSubview(passwordField)
        passwordField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(usernameField).inset(70.0)
            make.height.equalTo(40.0)
            make.width.equalTo(250.0)
        }
        
        
        loginBtn = UIButton(frame: CGRect.zero)
        loginBtn.isUserInteractionEnabled = true
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.layer.cornerRadius = 20.0
        loginBtn.backgroundColor = UIColor.clear
        loginBtn.layer.borderWidth = 2.0
        loginBtn.layer.borderColor = UIColor.bone.cgColor
        loginBtn.setTitle("login", for: .normal)
        loginBtn.setTitleColor(UIColor.bloodOrange, for: .highlighted)
        loginBtn.addTarget(self, action: #selector(loggingIn), for: .touchUpInside)
        addSubview(loginBtn)
        //backgroundImage.addSubview(enterBtn)
        loginBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(passwordField).inset(100.0)
            make.height.equalTo(40.0)
            make.width.equalTo(250.0)
        }

        
        
    }
}


extension LoginView: CAAnimationDelegate {
    
    func loggingIn() {
        
        delegate?.loginBtnPressed()
    }
    
    
    func setUpLayer() {
        l.backgroundColor = UIColor.blue.cgColor
        l.borderWidth = 100.0
        l.borderColor = UIColor.red.cgColor
        l.shadowOpacity = 0.7
        l.shadowRadius = 10.0
    }
    
    
    func animateLayer() {
        
        let keyframeAnimation = CAKeyframeAnimation(keyPath: "bounds")
        keyframeAnimation.delegate = self
        keyframeAnimation.duration = 1
        keyframeAnimation.beginTime = 0.1
        
    }
    
    
    
    
    
}
















