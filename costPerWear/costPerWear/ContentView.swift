//
//  ContentView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 5/31/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit

class ContentView: UIView {
    
    var pageTitle: UILabel!
    var pageDescription: UILabel!
    var textfieldEntry: UITextField!
    var enterBtn: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.pageTitle = UILabel(frame: CGRect(x: 70.0, y: 100.0, width: 100.0, height: 50.0))
        self.pageTitle.backgroundColor = UIColor.green
        self.addSubview(pageTitle)
        
        pageDescription = UILabel(frame: CGRect.init(x: 70.0, y: 50.0, width: 200.0, height: 50.0))
        pageDescription.backgroundColor = UIColor.red
        self.addSubview(pageDescription)
        
        self.textfieldEntry = UITextField(frame: CGRect.init(x: 70.0, y: 200.0, width: 300.0, height: 60.0))
        self.textfieldEntry.backgroundColor = UIColor.blue
        //textfieldEntry.delegate = self
        self.textfieldEntry.placeholder = "enter text here"
        self.textfieldEntry.clearsOnBeginEditing = true
        self.addSubview(textfieldEntry)
        
        self.enterBtn = UIButton(type: .roundedRect)
        self.enterBtn = UIButton(frame: CGRect(x: 70.0, y: 300.0, width: 100.0, height: 50.0))
        self.enterBtn.backgroundColor = UIColor.darkText
        self.enterBtn.setTitle("enter!", for: .normal)
        self.enterBtn.addTarget(self, action: #selector(ContentViewController.pressed), for: .touchUpInside)
        self.addSubview(enterBtn)
        
        
    }
        
    
}

