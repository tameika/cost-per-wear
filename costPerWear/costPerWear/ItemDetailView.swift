//
//  ItemDetailView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit



class ItemDetailView: UIView {
    
    // MARK: make lazy
    
    var itemImage: UIImageView!
    var itemDateAdded: UILabel!
    var itemName: UILabel!
    var itemPurchasePrice: UILabel!
    var itemAge: UILabel!
    var itemTags: UILabel!
    var itemCostPerWear: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        // MARK : ITEM IMAGE VIEW
        
        itemImage = UIImageView.init(frame: CGRect.zero)
        itemImage.translatesAutoresizingMaskIntoConstraints = false
        itemImage.backgroundColor = UIColor.bone
        itemImage.layer.cornerRadius = 15.0
        addSubview(itemImage)
        itemImage.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(185.0)
            make.centerY.equalToSuperview().inset(150.0)
            make.height.equalTo(150.0)
            make.width.equalTo(150.0)
        }
        
        
        // MARK : DATE ADDED LABEL
        
        itemDateAdded = UILabel.init(frame: CGRect.zero)
        itemDateAdded.translatesAutoresizingMaskIntoConstraints = false
        itemDateAdded.clipsToBounds = true
        itemDateAdded.backgroundColor = UIColor.bone
        itemDateAdded.layer.cornerRadius = 10.0
        addSubview(itemDateAdded)
        itemDateAdded.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(185.0)
            make.centerY.equalToSuperview().inset(250.0)
            make.height.equalTo(20)
            make.width.equalTo(70)
        }
        
        
        
        // MARK : ITEM NAME LABEL
        
        itemName = UILabel.init(frame: CGRect.zero)
        itemName.translatesAutoresizingMaskIntoConstraints = false
        itemName.backgroundColor = UIColor.bone
        itemName.clipsToBounds = true
        itemName.layer.cornerRadius = 10.0
        addSubview(itemName)
        itemName.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(300.0)
            make.height.equalTo(40.0)
            make.width.equalTo(220)
        }
        
        
        // MARK : ITEM AGE LABEL
        
        itemAge = UILabel.init(frame: CGRect.zero)
        itemAge.translatesAutoresizingMaskIntoConstraints = false
        itemAge.backgroundColor = UIColor.bone
        itemAge.clipsToBounds = true
        itemAge.layer.cornerRadius = 10.0
        addSubview(itemAge)
        itemAge.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(350.0)
            make.height.equalTo(40.0)
            make.width.equalTo(220.0)
            
        }
        
        // MARK : PURCHASE PRICE LABEL
        
        itemPurchasePrice = UILabel.init(frame: CGRect.zero)
        itemPurchasePrice.translatesAutoresizingMaskIntoConstraints = false
        itemPurchasePrice.backgroundColor = UIColor.bone
        itemPurchasePrice.clipsToBounds = true
        itemPurchasePrice.layer.cornerRadius = 10.0
        addSubview(itemPurchasePrice)
        itemPurchasePrice.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(400.0)
            make.height.equalTo(40.0)
            make.width.equalTo(220.0)
        }
        
        //MARK : Clothing Tags Label
        
        itemTags = UILabel.init(frame: CGRect.zero)
        itemTags.translatesAutoresizingMaskIntoConstraints = false
        itemTags.backgroundColor = UIColor.bone
        itemTags.clipsToBounds = true
        itemTags.layer.cornerRadius = 10.0
        addSubview(itemTags)
        itemTags.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(480.0)
            make.height.equalTo(85.0)
            make.width.equalTo(220.0)
        }
        
        
        // MARK : COST PER WEAR LABEL
        
        itemCostPerWear = UILabel.init(frame: CGRect.zero)
        itemCostPerWear.translatesAutoresizingMaskIntoConstraints = false
        itemCostPerWear.backgroundColor = UIColor.bone
        itemCostPerWear.clipsToBounds = true
        itemCostPerWear.layer.cornerRadius = 50.0
        addSubview(itemCostPerWear)
        itemCostPerWear.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(185.0)
            make.centerY.equalToSuperview().inset(590.0)
            make.height.equalTo(110.0)
            make.width.equalTo(110.0)
        }
        
    }
    
}











