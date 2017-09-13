//
//  ContentView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 5/31/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

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
        
        pageTitle = UILabel(frame: CGRect.zero)
        pageTitle.translatesAutoresizingMaskIntoConstraints = true
        pageTitle.backgroundColor = UIColor.green
        addSubview(pageTitle)
        pageTitle.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-200.0)
            make.height.equalTo(50.0)
            make.width.equalTo(80.0)
        }
        
        
        pageDescription = UILabel(frame: CGRect.zero)
        pageDescription.backgroundColor = UIColor.red
        addSubview(pageDescription)
        pageDescription.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(pageTitle).inset(100.0)
            make.height.equalTo(50.0)
            make.width.equalTo(120.0)
        }
        
        
        textfieldEntry = UITextField(frame: CGRect.zero)
        textfieldEntry.backgroundColor = UIColor.blue
        //textfieldEntry.delegate = self
        textfieldEntry.placeholder = "enter text here"
        textfieldEntry.clearsOnBeginEditing = true
        addSubview(textfieldEntry)
        textfieldEntry.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(pageDescription).inset(120)
            make.height.equalTo(50.0)
            make.width.equalTo(80.0)
        }

        
        
        enterBtn = UIButton(frame: CGRect.zero)
        enterBtn = UIButton(type: .roundedRect)
        enterBtn.backgroundColor = UIColor.darkText
        enterBtn.setTitle("enter!", for: .normal)
        enterBtn.addTarget(self, action: #selector(ContentViewController.pressed), for: .touchUpInside)
        addSubview(enterBtn)
        enterBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(textfieldEntry).inset(120)
            make.height.equalTo(50.0)
            make.width.equalTo(80.0)
        }

        
        
    }
    
    


    
    
}

