//
//  ItemViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var gradientLayer = CAGradientLayer()
    
    var colorSets = [[CGColor]]()
    
    var currentColorSet = Int()
    
    var itemDetails = ItemDetailView()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        createGradientLayer()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        //createGradientLayer()
       
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ItemViewController.handleTap(_:)))
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        self.view.backgroundColor = UIColor.rose
        
        itemDetails = ItemDetailView(frame: CGRect.zero)
        self.view.addSubview(itemDetails)
        

    }
    
    
    func handleTap(gestureRecognizer: UITapGestureRecognizer) {
        
        
    }
    
    func createColorSets() {
        
        colorSets.append([UIColor.bloodOrange.cgColor, UIColor.rose.cgColor])
        
    }
    
    
    func createGradientLayer() {
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = colorSets[currentColorSet]
        gradientLayer.locations = [0.0, 0.45]
        self.view.layer.addSublayer(gradientLayer)
    }
   
  

}
























