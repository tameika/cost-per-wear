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
    var imageView: UIImageView!
    var mottoLabel: UILabel!

    
    weak var delegate: LoginViewDelegate!
    let border = CALayer()
    let border2 = CALayer()
    let width = CGFloat(1.0)
    let width2 = CGFloat(1.0)

    //var viewForLayer = UIView()
    var l: CALayer{
        return loginBtn.layer
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
        let image = UIImage(named: "hanging-clothes.jpg")
        imageView = UIImageView(image: image)
        imageView.frame = self.bounds
        imageView.contentMode = .scaleToFill
        imageView.alpha = 1.0
        addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        
        mottoLabel = UILabel(frame: CGRect.zero)
        mottoLabel.translatesAutoresizingMaskIntoConstraints = true
        mottoLabel.backgroundColor = UIColor.clear
        mottoLabel.font = UIFont(name: "avenirNext", size: 18.5)
        mottoLabel.textAlignment = .center
        mottoLabel.textColor = UIColor.beigeLife
        mottoLabel.numberOfLines = 2
        mottoLabel.text = "Use your money and closet space wisely."
        addSubview(mottoLabel)
        mottoLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-150.0)
            make.height.equalTo(50.0)
            make.width.equalTo(300.00)
        }

        
        
        usernameField = UITextField(frame: CGRect.zero)
        usernameField.isUserInteractionEnabled = true
        usernameField.translatesAutoresizingMaskIntoConstraints = true
        usernameField.backgroundColor = UIColor.clear
        usernameField.font = UIFont.avenirNext
        usernameField.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSForegroundColorAttributeName: UIColor.beigeLife])
        usernameField.textAlignment = .left
        usernameField.clearsOnBeginEditing = true
        addSubview(usernameField)
        usernameField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-50.0)
            make.height.equalTo(40.0)
            make.width.equalTo(270.0)
        }
        
        
        passwordField = UITextField(frame: CGRect.zero)
        passwordField.isUserInteractionEnabled = true
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.backgroundColor = UIColor.clear
        passwordField.font = UIFont.avenirNext
        passwordField.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSForegroundColorAttributeName: UIColor.beigeLife])
        passwordField.textAlignment = .left
        passwordField.clearsOnBeginEditing = true
        addSubview(passwordField)
        passwordField.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(usernameField).inset(70.0)
            make.height.equalTo(40.0)
            make.width.equalTo(270.0)
        }
        
        
        loginBtn = UIButton(frame: CGRect.zero)
        loginBtn.isUserInteractionEnabled = true
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.layer.cornerRadius = 20.0
        loginBtn.backgroundColor = UIColor.orangeLeather
        //loginBtn.layer.borderWidth = 2.0
        //loginBtn.layer.borderColor = UIColor.bone.cgColor
    
        loginBtn.setTitle("login", for: .normal)
        loginBtn.setTitleColor(UIColor.beigeLife, for: .normal)
        loginBtn.setTitleColor(UIColor.bone, for: .highlighted)
        loginBtn.addTarget(self, action: #selector(loggingIn), for: .touchUpInside)
        addSubview(loginBtn)
        loginBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(passwordField).inset(100.0)
            make.height.equalTo(40.0)
            make.width.equalTo(270.0)
        }

        
        
    }
}


extension LoginView: CAAnimationDelegate {
    
    func loggingIn() {
        
        delegate?.loginBtnPressed()
    }
    
    
    func setUpLayer() {
        l.frame = usernameField.bounds
        l.backgroundColor = UIColor.orangeLeather.cgColor
        l.borderWidth = 1.0
        l.borderColor = UIColor.clear.cgColor
        l.shadowOpacity = 0.7
        l.shadowRadius = 6.0
        l.shadowColor = UIColor.darkGray.cgColor
        l.opacity = 1.0
        l.shadowOffset = CGSize(width: 0, height: 3)
        //loginBtn.layer.addSublayer(l)
        
    }
    
    
    func setUpBorder() {
        usernameField.borderStyle = .none
        border.borderColor = UIColor.beigeLife.cgColor
        border.frame = CGRect(x: 0.0, y: usernameField.frame.size.height - width, width: usernameField.frame.size.width, height: usernameField.frame.size.height)
        border.borderWidth = width
        usernameField.layer.addSublayer(border)
        usernameField.layer.masksToBounds = true
        
        passwordField.borderStyle = .none
        border2.borderColor = UIColor.beigeLife.cgColor
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




