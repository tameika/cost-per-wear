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


class CategoryView: UIView {
    
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
        topsBtn.translatesAutoresizingMaskIntoConstraints = false
        topsBtn.backgroundColor = UIColor.bloodOrange
        topsBtn.setTitle("Tops", for: .normal)
        //addTarget
        addSubview(topsBtn)
        topsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(80.0)
            make.centerY.equalToSuperview().inset(250.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
        }
        
        
        bottomsBtn = UIButton(frame: CGRect.zero)
        bottomsBtn.translatesAutoresizingMaskIntoConstraints = false
        bottomsBtn.backgroundColor = UIColor.bloodOrange
        bottomsBtn.setTitle("Bottoms", for: .normal)
         //addTarget
        addSubview(bottomsBtn)
        bottomsBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(300.0)
            make.centerY.equalToSuperview().inset(250.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)

        }
        
        
        dressesBtn = UIButton(frame: CGRect.zero)
        dressesBtn.translatesAutoresizingMaskIntoConstraints = false
        dressesBtn.backgroundColor = UIColor.bloodOrange
        dressesBtn.setTitle("Dresses", for: .normal)
         //addTarget
        addSubview(dressesBtn)
        dressesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(80.0)
            make.centerY.equalToSuperview().inset(400.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)

        }
        
        
        shoesBtn = UIButton(frame: CGRect.zero)
        shoesBtn.translatesAutoresizingMaskIntoConstraints = false
        shoesBtn.backgroundColor = UIColor.bloodOrange
        shoesBtn.setTitle("Shoes", for: .normal)
         //addTarget
        addSubview(shoesBtn)
        shoesBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(300.0)
            make.centerY.equalToSuperview().inset(400.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)

        }
        
        
        
        
        
    }
    
    
}
