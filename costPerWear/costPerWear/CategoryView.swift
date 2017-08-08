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
    
    func categoryButtonPressed()
}


class CategoryView: UIView {
    
    weak var delegate: CategoryViewDelegate?
    
    var topsBtn: UIButton!
    var bottomsBtn: UIButton!
    var dressesBtn: UIButton!
    var shoesBtn: UIButton!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        topsBtn = UIButton(frame: CGRect.zero)
        topsBtn.isUserInteractionEnabled = true
        topsBtn.translatesAutoresizingMaskIntoConstraints = false
        topsBtn.backgroundColor = UIColor.bloodOrange
        topsBtn.setTitle("Tops", for: .normal)
        
        topsBtn.addTarget(self, action: Selector(("categoryBtnPressed:")), for: .touchUpInside)
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
        bottomsBtn.backgroundColor = UIColor.bloodOrange
        bottomsBtn.setTitle("Bottoms", for: .normal)
        bottomsBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)
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
        dressesBtn.backgroundColor = UIColor.bloodOrange
        dressesBtn.setTitle("Dresses", for: .normal)
        dressesBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)
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
        shoesBtn.backgroundColor = UIColor.bloodOrange
        shoesBtn.setTitle("Shoes", for: .normal)
        shoesBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)
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




    
 
    
    
    
    
    
    
    
    

    

