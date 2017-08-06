//
//  ItemDetailView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit

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
        
        print("step 2")
        self.itemImage = UIImageView.init(frame: CGRect.zero)
        self.itemImage.translatesAutoresizingMaskIntoConstraints = false
        self.itemImage.backgroundColor = UIColor.bone
        self.itemImage.layer.borderWidth = 3.0
        self.itemImage.layer.cornerRadius = 50.0
        print("step 3")
        self.addSubview(itemImage)
        print("step 4")
        itemImage.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 100.0).isActive = true
        itemImage.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 400.0).isActive = true
        itemImage.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        itemImage.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        
        print("step 5")
        
        
        // MARK : DATE ADDED LABEL
        
        self.itemDateAdded = UILabel.init(frame: CGRect.zero)
        self.itemDateAdded.backgroundColor = UIColor.bone
        self.addSubview(itemDateAdded)
        
        
        
        // MARK : ITEM NAME LABEL
        
        self.itemName = UILabel.init(frame: CGRect.zero)
        self.itemName.backgroundColor = UIColor.bone
        self.addSubview(itemName)
        
        
        // MARK : ITEM AGE LABEL
        
        self.itemAge = UILabel.init(frame: CGRect.zero)
        self.itemAge.backgroundColor = UIColor.bone
        self.addSubview(itemAge)
        
        // MARK : PURCHASE PRICE LABEL
        
        self.itemPurchasePrice = UILabel.init(frame: CGRect.zero)
        self.itemPurchasePrice.backgroundColor = UIColor.bone
        self.addSubview(itemPurchasePrice)
        
        
        // MARK : COST PER WEAR LABEL
        
        self.itemCostPerWear = UILabel.init(frame: CGRect.zero)
        self.itemCostPerWear.backgroundColor = UIColor.bone
        self.addSubview(itemCostPerWear)
        
        
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









