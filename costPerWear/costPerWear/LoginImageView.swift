//
//  LoginImageView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/13/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit



class LoginImageView: UIView {
    
    var loginImage: UIImageView!

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
    
    
    let image = UIImage(named: "hanging-clothes.jpg")
    loginImage = UIImageView(image: image)
    loginImage.frame = self.bounds
    self.loginImage.contentMode = .scaleToFill
    loginImage.alpha = 1.0
    addSubview(loginImage)
    loginImage.snp.makeConstraints { (make) in
    make.centerX.equalToSuperview()
    make.centerY.equalToSuperview()
    make.height.equalToSuperview()
    make.width.equalToSuperview()
    }
        
        
    }
}

