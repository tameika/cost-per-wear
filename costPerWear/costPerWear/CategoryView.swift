//
//  CategoryView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/7/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Spring

protocol CategoryViewDelegate: class {
    
    func categorySelected()
}


class CategoryView: UIView {
    
    weak var delegate: CategoryViewDelegate?
    
    var topsBtn: SpringButton!
    var bottomsBtn: SpringButton!
    var dressesBtn: SpringButton!
    var shoesBtn: SpringButton!
    var addBtn: SpringButton!
    
    
 
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        

        topsBtn = SpringButton(frame: CGRect.zero)
        topsBtn.isUserInteractionEnabled = true
        topsBtn.translatesAutoresizingMaskIntoConstraints = false
        topsBtn.layer.cornerRadius = 45.0
        topsBtn.backgroundColor = UIColor.clear
        topsBtn.layer.borderWidth = 3.0
        topsBtn.layer.borderColor = UIColor.salmon.cgColor
        topsBtn.setTitle("Tops", for: .normal)
        topsBtn.setTitleColor(UIColor.darkText, for: .normal)
        topsBtn.setTitleColor(UIColor.bone, for: .highlighted)
        topsBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        topsBtn.tag = 1
        addSubview(topsBtn)
        topsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-200.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
        }
        
        
        
        
        bottomsBtn = SpringButton(frame: CGRect.zero)
        bottomsBtn.isUserInteractionEnabled = true
        bottomsBtn.translatesAutoresizingMaskIntoConstraints = false
        bottomsBtn.layer.cornerRadius = 45.0
        bottomsBtn.backgroundColor = UIColor.clear
        bottomsBtn.layer.borderWidth = 3.0
        bottomsBtn.layer.borderColor = UIColor.salmon.cgColor
        bottomsBtn.setTitle("Bottoms", for: .normal)
        bottomsBtn.setTitleColor(UIColor.darkText, for: .normal)
        bottomsBtn.setTitleColor(UIColor.bone, for: .highlighted)
        bottomsBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        bottomsBtn.tag = 2
        addSubview(bottomsBtn)
        bottomsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(topsBtn).inset(110.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
        
        dressesBtn = SpringButton(frame: CGRect.zero)
        bottomsBtn.isUserInteractionEnabled = true
        dressesBtn.translatesAutoresizingMaskIntoConstraints = false
        dressesBtn.layer.cornerRadius = 45.0
        dressesBtn.backgroundColor = UIColor.clear
        dressesBtn.layer.borderWidth = 3.0
        dressesBtn.layer.borderColor = UIColor.salmon.cgColor
        dressesBtn.setTitle("Dresses", for: .normal)
        dressesBtn.setTitleColor(UIColor.darkText, for: .normal)
        dressesBtn.setTitleColor(UIColor.bone, for: .highlighted)
        dressesBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        dressesBtn.tag = 3
        addSubview(dressesBtn)
        dressesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bottomsBtn).inset(110.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
        
        shoesBtn = SpringButton(frame: CGRect.zero)
        shoesBtn.isUserInteractionEnabled = true
        shoesBtn.translatesAutoresizingMaskIntoConstraints = false
        shoesBtn.layer.cornerRadius = 45.0
        shoesBtn.backgroundColor = UIColor.clear
        shoesBtn.layer.borderWidth = 3.0
        shoesBtn.layer.borderColor = UIColor.salmon.cgColor
        shoesBtn.setTitle("Shoes", for: .normal)
        shoesBtn.setTitleColor(UIColor.darkText, for: .normal)
        shoesBtn.setTitleColor(UIColor.bone, for: .highlighted)
        shoesBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        shoesBtn.tag = 4
        addSubview(shoesBtn)
        shoesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(dressesBtn).inset(110.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
        
        addBtn = SpringButton(frame: CGRect.zero)
        addBtn.isUserInteractionEnabled = true
        addBtn.translatesAutoresizingMaskIntoConstraints = false
        addBtn.layer.cornerRadius = 50.0
        addBtn.backgroundColor = UIColor.salmon
        addBtn.layer.borderWidth = 3.0
        addBtn.layer.borderColor = UIColor.salmon.cgColor
        addBtn.setTitle("+", for: .normal)
        addBtn.setTitleColor(UIColor.darkText, for: .normal)
        addBtn.setTitleColor(UIColor.bone, for: .highlighted)
        addBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        addBtn.tag = 5
        addSubview(addBtn)
        addBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(shoesBtn).inset(110.0)
            make.height.equalTo(102.0)
            make.width.equalTo(102.0)
            
            
        }
        
        
        
        
    }
    
    
    
    
}


extension CategoryView {
    
    func categoryButtonPressed() {
        delegate?.categorySelected()
    }
    
    
    func animateCategoryButtons(button: SpringButton, animation: String, delay: CGFloat, duration: CGFloat, force: CGFloat) {
        button.animation = animation
        button.delay = delay
        button.duration = duration
        button.force = force
        button.animate()
        
    }
    
    
    func createAnimations() {
        
        animateCategoryButtons(button: topsBtn, animation: "pop", delay: 0.90, duration: 1.5, force: 1.3)
        animateCategoryButtons(button: bottomsBtn, animation: "pop", delay: 0.70, duration: 1.5, force: 1.5)
        animateCategoryButtons(button: dressesBtn, animation: "pop", delay: 0.60, duration: 1.5, force: 1.1)
        animateCategoryButtons(button: shoesBtn, animation: "pop", delay: 0.80, duration: 1.5, force: 1.6)
        animateCategoryButtons(button: addBtn, animation: "pop", delay: 1.10, duration: 2.0, force: 1.0)
        
    }


    
}




