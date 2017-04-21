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
    
    var newItemImage: UIImageView!
    var newItemName: UITextField!
    var newItemAge: UITextField!
    var newItemPurchasePrice: UITextField!
    var newItemDateCreated: UITextField!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)


        self.newItemImage = UIImageView(frame: CGRect.init(x: 150.0, y: 100.0, width: 150.0, height: 150.0))
        self.newItemImage.backgroundColor = UIColor.lightGray
        self.newItemImage.layer.borderWidth = 3.0
        self.newItemImage.layer.cornerRadius = 1.0
        
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
        
        self.newItemDateCreated = UITextField(frame: CGRect.init(x: 150.0, y: 150.0, width: 80.0, height: 50.0))
        self.newItemDateCreated.backgroundColor = UIColor.lightGray
        
        self.addSubview(newItemDateCreated)
        
    
    }
    
}


extension NewItemView: UITextFieldDelegate {
    
    var placeholder: NSAttributedString {return NSAttributedString(string: "enter here", attributes: [NSForegroundColorAttributeName : UIColor.lightText])}
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("editing began")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("editing ended")
    }

}









