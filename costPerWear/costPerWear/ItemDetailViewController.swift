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
        print("step A")
        itemDetails = ItemDetailView(frame: CGRect.zero)
        self.view.addSubview(itemDetails)
        print("step G")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("step B")
        self.navigationController?.navigationBar.isHidden = true
        print("step C")
        createColorSets()
        print("step D")
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(recognizer:)))
        self.view.addGestureRecognizer(tapGestureRecognizer)
        view.isUserInteractionEnabled = true
        print("step E")
//        itemDetails = ItemDetailView(frame: CGRect.zero)
//        self.view.addSubview(itemDetails)
        print("step F")
    }
    
    
    func handleTap(recognizer: UITapGestureRecognizer) {
        
        if currentColorSet < colorSets.count - 1 {
            
            currentColorSet += 1
        } else {
            
            currentColorSet = 0
        }
        
        let colorChangeAnimation = CABasicAnimation(keyPath: "colors")
        colorChangeAnimation.duration = 1.0
        colorChangeAnimation.toValue = colorSets[currentColorSet]
        colorChangeAnimation.fillMode = kCAFillModeForwards
        colorChangeAnimation.isRemovedOnCompletion = false
        gradientLayer.add(colorChangeAnimation, forKey: "colorChange")
    }
    
    
    func createColorSets() {
        
        colorSets.append([UIColor.bloodOrange.cgColor, UIColor.rose.cgColor])
        colorSets.append([UIColor.lilacMute.cgColor, UIColor.eggplantMute.cgColor])
        colorSets.append([UIColor.deepTealNew.cgColor, UIColor.persianGreen.cgColor])
        colorSets.append([UIColor.blueSmokeDeep.cgColor, UIColor.blueSmoke.cgColor])
        
        currentColorSet = 0
        
    }
    
    
    func createGradientLayer() {
        
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = colorSets[currentColorSet]
        gradientLayer.locations = [0.0, 0.40]
        self.view.layer.addSublayer(gradientLayer)
    }
   
  

}
























