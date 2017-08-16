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


protocol CategoryViewDelegate: class {
    
    func categorySelected()
}


class CategoryView: UIView {
    
    weak var delegate: CategoryViewDelegate?
    
    var topsBtn: UIButton!
    var bottomsBtn: UIButton!
    var dressesBtn: UIButton!
    var shoesBtn: UIButton!
    
    func categoryButtonPressed() {
        delegate?.categorySelected()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        topsBtn = UIButton(frame: CGRect.zero)
        topsBtn.isUserInteractionEnabled = true
        topsBtn.translatesAutoresizingMaskIntoConstraints = false
        topsBtn.layer.cornerRadius = 30.0
        topsBtn.backgroundColor = UIColor.bloodOrange
        topsBtn.setTitle("Tops", for: .normal)
        topsBtn.setTitleColor(UIColor.bone, for: .normal)
        topsBtn.setTitleColor(UIColor.rose, for: .highlighted)
        topsBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        topsBtn.tag = 1
        addSubview(topsBtn)
        topsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(-100.0)
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
        }
        
        
        
        
        bottomsBtn = UIButton(frame: CGRect.zero)
        bottomsBtn.isUserInteractionEnabled = true
        bottomsBtn.translatesAutoresizingMaskIntoConstraints = false
        bottomsBtn.layer.cornerRadius = 30.0
        bottomsBtn.backgroundColor = UIColor.bloodOrange
        bottomsBtn.setTitle("Bottoms", for: .normal)
        bottomsBtn.setTitleColor(UIColor.bone, for: .normal)
        bottomsBtn.setTitleColor(UIColor.rose, for: .highlighted)
        bottomsBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        bottomsBtn.tag = 2
        addSubview(bottomsBtn)
        bottomsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(100.0)
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
            
        }
        
        
        dressesBtn = UIButton(frame: CGRect.zero)
        bottomsBtn.isUserInteractionEnabled = true
        dressesBtn.translatesAutoresizingMaskIntoConstraints = false
        dressesBtn.layer.cornerRadius = 30.0
        dressesBtn.backgroundColor = UIColor.bloodOrange
        dressesBtn.setTitle("Dresses", for: .normal)
        dressesBtn.setTitleColor(UIColor.bone, for: .normal)
        dressesBtn.setTitleColor(UIColor.rose, for: .highlighted)
        dressesBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        dressesBtn.tag = 3
        addSubview(dressesBtn)
        dressesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(-100.0)
            make.centerY.equalToSuperview().inset(50.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
            
        }
        
        
        shoesBtn = UIButton(frame: CGRect.zero)
        shoesBtn.isUserInteractionEnabled = true
        shoesBtn.translatesAutoresizingMaskIntoConstraints = false
        shoesBtn.layer.cornerRadius = 30.0
        shoesBtn.backgroundColor = UIColor.bloodOrange
        shoesBtn.setTitle("Shoes", for: .normal)
        shoesBtn.setTitleColor(UIColor.bone, for: .normal)
        shoesBtn.setTitleColor(UIColor.rose, for: .highlighted)
        shoesBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        shoesBtn.tag = 4
        addSubview(shoesBtn)
        shoesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(100.0)
            make.centerY.equalToSuperview().inset(50.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
            
        }
        
    }
}





