//
//  BlurView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/31/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class Blurview: UIView {
    
    var imageView: UIImageView!
    var blurEffect: UIBlurEffect!
    var blurEffectView: UIVisualEffectView!
    //let backgroundImage = "#imageLiteral(resourceName: "people-2598015_1920")"
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        print("1")
        let image = UIImage(named: "fashiongirl")
        imageView = UIImageView(image: image)
        //imageView.frame = self.bounds
        //imageView.contentMode = .scaleAspectFill
        print("2")
        addSubview(imageView)
        print("3")
        imageView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
//
//        print("4")
//        blurEffect = UIBlurEffect(style: .light)
//        blurEffectView = UIVisualEffectView(effect: blurEffect)
//        //blurEffectView.frame = self.bounds
//        print("5")
//        addSubview(blurEffectView)
//        print("6")
//        blurEffectView.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview()
//            make.centerY.equalToSuperview()
//            make.height.equalToSuperview()
//            make.width.equalToSuperview()
//            
//        }
        
        print("7")
    
    }

}





































