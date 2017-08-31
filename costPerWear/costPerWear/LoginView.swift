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
    
    var backgroundImage: UIImageView!
    var backgroundBlur: UIBlurEffect!
    
    var usernameField: UITextField!
    var passwordField: UITextField!
    var enterBtn: UIButton!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        usernameField = UITextField(frame: CGRect.zero)
        usernameField.isUserInteractionEnabled = true
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.layer.cornerRadius = 10.0
        usernameField.backgroundColor = UIColor.clear
        usernameField.layer.borderWidth = 2.0
        usernameField.layer.borderColor = UIColor.bone.cgColor
        usernameField.placeholder = "username"
        usernameField.clearsOnBeginEditing = true
        addSubview(usernameField)
        usernameField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-300.0)
            make.height.equalTo(70.0)
            make.width.equalTo(40.0)
        }
        
        
        passwordField = UITextField(frame: CGRect.zero)
        passwordField.isUserInteractionEnabled = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.layer.cornerRadius = 10.0
        passwordField.backgroundColor = UIColor.clear
        passwordField.layer.borderWidth = 2.0
        passwordField.layer.borderColor = UIColor.bone.cgColor
        passwordField.placeholder = "username"
        passwordField.clearsOnBeginEditing = true
        addSubview(passwordField)
        passwordField.snp.makeConstraints { (make) in
            make.centerX.equalTo(usernameField)
            make.centerY.equalTo(usernameField).inset(120.0)
            make.height.equalTo(70.0)
            make.width.equalTo(40.0)
        }
        
        
        enterBtn = UIButton(frame: CGRect.zero)
        enterBtn.isUserInteractionEnabled = true
        enterBtn.translatesAutoresizingMaskIntoConstraints = false
        enterBtn.layer.cornerRadius = 10.0
        enterBtn.backgroundColor = UIColor.clear
        enterBtn.layer.borderWidth = 2.0
        enterBtn.layer.borderColor = UIColor.bone.cgColor
        enterBtn.setTitle("enter", for: .normal)
        enterBtn.setTitleColor(UIColor.bloodOrange, for: .highlighted)
        addSubview(enterBtn)
        passwordField.snp.makeConstraints { (make) in
            make.centerX.equalTo(passwordField)
            make.centerY.equalTo(passwordField).inset(150.0)
            make.height.equalTo(70.0)
            make.width.equalTo(40.0)
        }

        
        
    }
}



















