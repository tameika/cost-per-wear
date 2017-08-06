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


// TODO: encap in functions?

class ItemDetailView: UIView {
    
    // MARK: make lazy
    
    var itemImage: UIImageView!
    var itemDateAdded: UILabel!
    var itemName: UILabel!
    var itemPurchasePrice: UILabel!
    var itemAge: UILabel!
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
        itemDateAdded.backgroundColor = UIColor.bone
        itemDateAdded.layer.cornerRadius = itemDateAdded.frame.size.height * 0.50
        itemDateAdded.clipsToBounds = true
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
        itemName.layer.cornerRadius = itemName.frame.size.height * 0.50
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
        itemAge.layer.cornerRadius = itemAge.frame.size.height * 0.50
        addSubview(itemAge)
        itemAge.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(350.0)
            make.height.equalTo(40.0)
            make.width.equalTo(220.0)
            
        }
        
        // MARK : PURCHASE PRICE LABEL
        
        itemPurchasePrice = UILabel.init(frame: CGRect.zero)
        itemPurchasePrice.translatesAutoresizingMaskIntoConstraints = true
        itemPurchasePrice.backgroundColor = UIColor.bone
        itemPurchasePrice.layer.cornerRadius = itemPurchasePrice.frame.size.height * 0.50
        addSubview(itemPurchasePrice)
        itemPurchasePrice.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(400.0)
            make.height.equalTo(40.0)
            make.width.equalTo(220.0)
        }
        
        
        // MARK : COST PER WEAR LABEL
        
        itemCostPerWear = UILabel.init(frame: CGRect.zero)
        itemCostPerWear.translatesAutoresizingMaskIntoConstraints = true
        itemCostPerWear.backgroundColor = UIColor.bone
        itemCostPerWear.layer.cornerRadius = itemPurchasePrice.frame.size.height * 0.50
        addSubview(itemCostPerWear)
        itemCostPerWear.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(140.0)
            make.centerY.equalToSuperview().inset(520.0)
            make.height.equalTo(130.0)
            make.width.equalTo(130.0)
        }
        
        
    }
    
}


extension ItemDetailView: UITextFieldDelegate {
    
    var placeholder: NSAttributedString {return NSAttributedString(string: "enter here", attributes: [NSForegroundColorAttributeName : UIColor.lightText])}
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("hey")
        return false
    }
    
    

}









