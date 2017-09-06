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



class LoginView: UIView {
    //var backgroundImage: UIImageView!

    var usernameField: UITextField!
    var passwordField: UITextField!
    var enterBtn: UIButton!
    
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
        passwordField.clearsOnBeginEditing = true
        addSubview(passwordField)
        //backgroundImage.addSubview(passwordField)
        passwordField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(usernameField).inset(70.0)
            make.height.equalTo(40.0)
            make.width.equalTo(250.0)
        }
        
        
        enterBtn = UIButton(frame: CGRect.zero)
        enterBtn.isUserInteractionEnabled = true
        enterBtn.translatesAutoresizingMaskIntoConstraints = false
        enterBtn.layer.cornerRadius = 20.0
        enterBtn.backgroundColor = UIColor.clear
        enterBtn.layer.borderWidth = 2.0
        enterBtn.layer.borderColor = UIColor.bone.cgColor
        enterBtn.setTitle("enter", for: .normal)
        enterBtn.setTitleColor(UIColor.bloodOrange, for: .highlighted)
        enterBtn.addTarget(self, action: #selector(LoginViewController.loginBtnPressed), for: .touchUpInside)
        addSubview(enterBtn)
        //backgroundImage.addSubview(enterBtn)
        enterBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(passwordField).inset(100.0)
            make.height.equalTo(40.0)
            make.width.equalTo(250.0)
        }

        
        
    }
}



















