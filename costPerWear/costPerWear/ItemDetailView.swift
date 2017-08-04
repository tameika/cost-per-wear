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
    var itemName: UILabel!
    var itemAge: UILabel!
    var itemPurchasePrice: UILabel!
    var itemDateAdded: UILabel!
    var itemCostPerWear: UILabel!
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)

        // MARK : ITEM IMAGE VIEW
        
        self.itemImage = UIImageView(frame: CGRect(x: 150.0, y: 100.0, width: 150.0, height: 150.0))
        self.itemImage.backgroundColor = UIColor.lightGray
        self.itemImage.layer.borderWidth = 3.0
        self.itemImage.layer.cornerRadius = 50.0
        self.addSubview(itemImage)
        
        
        // MARK : ITEM NAME LABEL
        
        self.itemName = UILabel(frame: CGRect(x: 60.0, y: 300.0, width: 300.0, height: 60.0))
        self.itemName.backgroundColor = UIColor.lightGray
        //newItemName.delegate = self
        //newItemName.attributedPlaceholder = placeholder
        //newItemName.clearsOnBeginEditing = true
        
        self.addSubview(itemName)
        
        self.itemAge = UILabel(frame: CGRect.init(x: 60.0, y: 400.0, width: 300.0, height: 60.0))
        self.itemAge.backgroundColor = UIColor.lightGray
        self.addSubview(itemAge)
        
        // MARK : PURCHASE PRICE LABEL
        
        self.itemPurchasePrice = UILabel(frame: CGRect.init(x: 120.0, y: 500.0, width: 100.0, height: 60.0))
        self.itemPurchasePrice.backgroundColor = UIColor.lightGray
        self.addSubview(itemPurchasePrice)
        
        
        // MARK : DATE ADDED LABEL
        
        self.itemDateAdded = UILabel(frame: CGRect.init(x: 200.0, y: 260.0, width: 50.0, height: 20.0))
        self.itemDateAdded.backgroundColor = UIColor.lightGray
        self.addSubview(itemDateAdded)
        
        
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









