//
//  NewItemView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit


class NewItemView: UIView {
    
    // MARK: make lazy
    
    var newItemImage: UIImageView!
    var newItemName: UITextField!
    var newItemAge: UITextField!
    var newItemPurchasePrice: UITextField!
    var newItemDateCreated: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)

        // MARK: encap in functions
        
        self.newItemImage = UIImageView(frame: CGRect.init(x: 150.0, y: 100.0, width: 150.0, height: 150.0))
        self.newItemImage.backgroundColor = UIColor.lightGray
        self.newItemImage.layer.borderWidth = 3.0
        self.newItemImage.layer.cornerRadius = 50.0
        
        self.addSubview(newItemImage)
        
        self.newItemName = UITextField(frame: CGRect.init(x: 60.0, y: 300.0, width: 300.0, height: 60.0))
        self.newItemName.backgroundColor = UIColor.lightGray
        newItemName.delegate = self
        newItemName.attributedPlaceholder = placeholder
        newItemName.clearsOnBeginEditing = true
        
        
        
        self.addSubview(newItemName)
        
        self.newItemAge = UITextField(frame: CGRect.init(x: 60.0, y: 400.0, width: 300.0, height: 60.0))
        self.newItemAge.backgroundColor = UIColor.lightGray
        newItemAge.delegate = self
        
        self.addSubview(newItemAge)
        
        self.newItemPurchasePrice = UITextField(frame: CGRect.init(x: 120.0, y: 500.0, width: 100.0, height: 60.0))
        self.newItemPurchasePrice.backgroundColor = UIColor.lightGray
        newItemPurchasePrice.delegate = self
        
        self.addSubview(newItemPurchasePrice)
        
        self.newItemDateCreated = UILabel(frame: CGRect.init(x: 200.0, y: 260.0, width: 50.0, height: 20.0))
        self.newItemDateCreated.backgroundColor = UIColor.lightGray
        
        self.addSubview(newItemDateCreated)
        
        
    }
    
}


extension NewItemView: UITextFieldDelegate {
    
    var placeholder: NSAttributedString {return NSAttributedString(string: "enter here", attributes: [NSForegroundColorAttributeName : UIColor.lightText])}
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("hey")
        return false
    }
    
    

}









