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
    let border = CALayer()
    let border2 = CALayer()
    let width = CGFloat(2.0)
    let width2 = CGFloat(2.0)

    //var viewForLayer = UIView()
    var l: CALayer{
        return loginBtn.layer
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
        usernameField.translatesAutoresizingMaskIntoConstraints = true
        usernameField.backgroundColor = UIColor.clear
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
        passwordField.isUserInteractionEnabled = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.backgroundColor = UIColor.clear
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
        l.frame = usernameField.bounds
        l.backgroundColor = UIColor.gray.cgColor
        l.borderWidth = 2.0
        l.borderColor = UIColor.bone.cgColor
        l.shadowOpacity = 0.7
        l.shadowRadius = 6.0
        l.shadowColor = UIColor.blueSmokeDeep.cgColor
        l.opacity = 1.0
        l.shadowOffset = CGSize(width: 0, height: 3)
        //usernameField.layer.addSublayer(l)
        
    }
    
    
    func setUpBorder() {
        usernameField.borderStyle = .none
        border.borderColor = UIColor.bone.cgColor
        border.frame = CGRect(x: 0.0, y: usernameField.frame.size.height - width, width: usernameField.frame.size.width, height: usernameField.frame.size.height)
        border.borderWidth = width
        usernameField.layer.addSublayer(border)
        usernameField.layer.masksToBounds = true
        
        passwordField.borderStyle = .none
        border2.borderColor = UIColor.bone.cgColor
        border2.frame = CGRect(x: 0.0, y: passwordField.frame.size.height - width2, width: passwordField.frame.size.width, height: passwordField.frame.size.height)
        border2.borderWidth = width2
        passwordField.layer.addSublayer(border2)
        passwordField.layer.masksToBounds = true

    }
    
    
    
    func animateLayer() {
        let keyframeAnimation = CAKeyframeAnimation(keyPath: "bounds")
        keyframeAnimation.delegate = self
        keyframeAnimation.duration = 3.0
        keyframeAnimation.beginTime = 0.0
        
        let initialBounds = NSValue(cgRect: CGRect.init(x: 0.0, y: 0.0, width: 250.0, height: 40.0))
        let middleBounds = NSValue(cgRect: CGRect.init(x: 0.0, y: 0.0, width: 200.0, height: 30.0))
        let finalBounds = NSValue(cgRect: CGRect.init(x: 0.0, y: 0.0, width: 300.0, height: 80.0))
        
        keyframeAnimation.values = [initialBounds, middleBounds, finalBounds]
        keyframeAnimation.keyTimes = [0.0, 0.4, 1.0]
        
        keyframeAnimation.timingFunctions = [CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseOut)]
        
        self.l.add(keyframeAnimation, forKey: "bounds")
        
    }
    
   
}










