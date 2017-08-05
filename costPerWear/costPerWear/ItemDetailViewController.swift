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
        createColorSets()
       
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: handleTap(_:))
        self.view.addGestureRecognizer(tapGestureRecognizer)
        
        self.view.backgroundColor = UIColor.rose
        
        itemDetails = ItemDetailView(frame: CGRect.zero)
        self.view.addSubview(itemDetails)
        

    }
    
    
    func handleTap(gestureRecognizer: UITapGestureRecognizer) {
        
        if currentColorSet < colorSets.count - 1 {
            
            currentColorSet += 1
        } else {
            
            currentColorSet = 0
        }
        
        let colorChangeAnimation = CABasicAnimation(keyPath: "colors")
        colorChangeAnimation.duration = 2.0
        colorChangeAnimation.toValue = colorSets[currentColorSet]
        colorChangeAnimation.fillMode = kCAFillModeForwards
        colorChangeAnimation.isRemovedOnCompletion = false
        gradientLayer.add(colorChangeAnimation, forKey: "colorChange")
    }
    
    
    func createColorSets() {
        
        colorSets.append([UIColor.bloodOrange.cgColor, UIColor.rose.cgColor])
        colorSets.append([UIColor.persianGreen.cgColor, UIColor.deepTeal.cgColor])
        
        currentColorSet = 0
        
    }
    
    
    func createGradientLayer() {
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = colorSets[currentColorSet]
        gradientLayer.locations = [0.0, 0.45]
        self.view.layer.addSublayer(gradientLayer)
    }
   
  

}
























