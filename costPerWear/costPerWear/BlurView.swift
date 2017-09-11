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


class Blurview: UIVisualEffectView {
    
    var imageView: UIImageView!
    var blurEffect: UIBlurEffect!
    var blurEffectView: UIVisualEffectView!
    
    
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(effect: blurEffect)

        imageView = UIImageView(image: #imageLiteral(resourceName: "people-2598015_1920"))
        imageView.frame = self.bounds
        imageView.contentMode = .scaleToFill
        addSubview(imageView)
        
        blurEffect = UIBlurEffect(style: .regular)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        addSubview(blurEffectView)
        
        
    }
    

}





































