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
    
    var backgroundBlur: UIVisualEffectView
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func createBlurView() {
        
        backgroundBlur.effect = UIBlurEffect(style: .dark)
    }

}





































