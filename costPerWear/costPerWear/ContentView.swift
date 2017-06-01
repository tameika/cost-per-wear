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
    
    var pageLabel: UILabel!
    var pageDescription: UILabel!
    var textfieldEntry: UITextField!
    var enterBtn: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
    
        self.pageLabel = UILabel(frame: CGRect.init(x: 70.0, y: 100.0, width: 100.0, height: 50.0))
        self.pageLabel.backgroundColor = UIColor.green
        //self.pageLabel.text = pages[self.pageIndex].title
        self.addSubview(pageLabel)
        
        //        pageLabel.translatesAutoresizingMaskIntoConstraints = false
        //
        //        pageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        //        pageLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        //        pageLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        //        pageLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.00).isActive = true
        
        pageDescription = UILabel(frame: CGRect.init(x: 70.0, y: 50.0, width: 200.0, height: 50.0))
        pageDescription.backgroundColor = UIColor.red
        //pageDescription.text = pages[self.pageIndex].description
        self.addSubview(pageDescription)
        
        //        pageDescription.translatesAutoresizingMaskIntoConstraints = false
        //
        //        pageDescription.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        //        pageDescription.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        //        pageDescription.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        //        pageDescription.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.00).isActive = true
        
        
        self.textfieldEntry = UITextField(frame: CGRect.init(x: 70.0, y: 200.0, width: 300.0, height: 60.0))
        self.textfieldEntry.backgroundColor = UIColor.blue
        //textfieldEntry.delegate = self
        self.textfieldEntry.placeholder = "enter text here"
        self.textfieldEntry.clearsOnBeginEditing = true
        self.addSubview(textfieldEntry)
        
        self.enterBtn = UIButton.init(type: .roundedRect)
        self.enterBtn = UIButton(frame: CGRect.init(x: 70.0, y: 300.0, width: 100.0, height: 50.0))
        self.enterBtn.backgroundColor = UIColor.darkText
        self.enterBtn.setTitle("enter!", for: .normal)
        self.enterBtn.addTarget(self, action: #selector(ContentViewController.pressed), for: .touchUpInside)
        self.addSubview(enterBtn)
        

    }
    
    
}

