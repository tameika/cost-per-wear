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
        topsBtn.layer.cornerRadius = 45.0
//        topsBtn.layer.shadowColor = UIColor.darkGray.cgColor
//        topsBtn.layer.shadowRadius = 50.0
//        topsBtn.layer.shadowOffset = CGSize.init(width: 20.0, height: 20.0)
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
            make.centerX.equalToSuperview().inset(-100.0)
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
        }
        
        
        
        
        bottomsBtn = UIButton(frame: CGRect.zero)
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
            make.centerX.equalToSuperview().inset(100.0)
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
        
        dressesBtn = UIButton(frame: CGRect.zero)
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
            make.centerX.equalToSuperview().inset(-100.0)
            make.centerY.equalToSuperview().inset(50.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
        
        shoesBtn = UIButton(frame: CGRect.zero)
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
            make.centerX.equalToSuperview().inset(100.0)
            make.centerY.equalToSuperview().inset(50.0)
            make.height.equalTo(90.0)
            make.width.equalTo(90.0)
            
        }
        
    }
}





