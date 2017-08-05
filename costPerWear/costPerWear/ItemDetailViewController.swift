//
//  NewItemViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    var gradientLayer = CAGradientLayer()
    
    var itemDetails = ItemDetailView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        createGradientLayer()
        
        self.view.backgroundColor = UIColor.rose
        
        itemDetails = ItemDetailView(frame: CGRect.zero)
        self.view.addSubview(itemDetails)
        

    }
    
    func createGradientLayer() {
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.rose.cgColor]
        self.view.layer.addSublayer(gradientLayer)
    }
   
  

}
























