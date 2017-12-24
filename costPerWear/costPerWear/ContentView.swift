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

protocol ContentViewDelegate: class {
    
    func cancelSelected()
    
    func enterSelected()
}

class ContentView: UIView {
    
    var pageTitle: UILabel!
    var pageDescription: UILabel!
    var textfieldEntry: UITextField!
    var enterBtn: UIButton!
    var cancelBtn: UIButton!
    weak var delegate: ContentViewDelegate?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        pageTitle = UILabel(frame: CGRect.zero)
        pageTitle.translatesAutoresizingMaskIntoConstraints = false
        pageTitle.clipsToBounds = true
        pageTitle.layer.cornerRadius = 20.0
        pageTitle.backgroundColor = UIColor.bone
        pageTitle.textAlignment = .center
        pageTitle.textColor = UIColor.bone
        addSubview(pageTitle)
        pageTitle.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(-100.0)
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
        
        
        pageDescription = UILabel(frame: CGRect.zero)
        pageDescription.translatesAutoresizingMaskIntoConstraints = false
        pageDescription.clipsToBounds = true
        pageDescription.layer.cornerRadius = 20.0
        pageDescription.backgroundColor = UIColor.bone
        pageDescription.textAlignment = .center
        pageDescription.textColor = UIColor.darkGray
        addSubview(pageDescription)
        pageDescription.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(pageTitle).inset(100.0)
            make.height.equalTo(50.0)
            make.width.equalTo(120.0)
        }
        
        
        textfieldEntry = UITextField(frame: CGRect.zero)
        textfieldEntry.translatesAutoresizingMaskIntoConstraints = false
        textfieldEntry.clipsToBounds = true
        textfieldEntry.layer.cornerRadius = 20.0
        textfieldEntry.backgroundColor = UIColor.bone
        //textfieldEntry.delegate = self
        textfieldEntry.placeholder = "enter text here"
        textfieldEntry.clearsOnBeginEditing = true
        addSubview(textfieldEntry)
        textfieldEntry.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(pageDescription).inset(120)
            make.height.equalTo(50.0)
            make.width.equalTo(150.0)
        }

        
        
        enterBtn = UIButton(frame: CGRect.zero)
        enterBtn = UIButton(type: .roundedRect)
        enterBtn.layer.cornerRadius = 20.0
        enterBtn.backgroundColor = UIColor.bone
        enterBtn.setTitle("enter!", for: .normal)
        enterBtn.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        addSubview(enterBtn)
        enterBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(textfieldEntry).inset(200)
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
        
        
        cancelBtn = UIButton(frame: CGRect.zero)
        cancelBtn = UIButton(type: .roundedRect)
        cancelBtn.layer.cornerRadius = 20.0
        cancelBtn.backgroundColor = UIColor.bone
        cancelBtn.setTitle("cancel", for: .normal)
        cancelBtn.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        addSubview(cancelBtn)
        cancelBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(enterBtn).inset(100.0)
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
        
        
    }
   
    
}


extension ContentView {
    
    @objc func cancelButtonPressed() {
        delegate?.cancelSelected()
        
    }
    
    @objc func enterButtonPressed() {
        delegate?.enterSelected()
    }
}
