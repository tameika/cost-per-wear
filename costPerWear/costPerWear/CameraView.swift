//
//  CameraView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/14/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit



protocol CameraViewDelegate: class {
    
    func openCameraSelected()
    func openPhotoLibrarySelected()
}

class CameraView: UIView {
    
    weak var delegate: CameraViewDelegate?
    weak var openCameraBtn: UIButton!
    weak var openPhotoLibraryBtn: UIButton!
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        
        
        openCameraBtn = UIButton(frame: CGRect.zero)
        openCameraBtn = UIButton(type: .roundedRect)
        //openCameraBtn.layer.cornerRadius = 20.0
        openCameraBtn.backgroundColor = UIColor.bone
        openCameraBtn.setTitle("enter!", for: .normal)
        openCameraBtn.addTarget(self, action: #selector(openCameraButtonPressed), for: .touchUpInside)
        addSubview(openCameraBtn)
        openCameraBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(120)
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }
 
        
        
        openPhotoLibraryBtn = UIButton(frame: CGRect.zero)
        openPhotoLibraryBtn = UIButton(type: .roundedRect)
        openPhotoLibraryBtn.layer.cornerRadius = 20.0
        openPhotoLibraryBtn.backgroundColor = UIColor.bone
        openPhotoLibraryBtn.setTitle("enter!", for: .normal)
        openPhotoLibraryBtn.addTarget(self, action: #selector(openPhotoLibraryButtonPressed), for: .touchUpInside)
        addSubview(openPhotoLibraryBtn)
        openPhotoLibraryBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(openCameraBtn).inset(120)
            make.height.equalTo(50.0)
            make.width.equalTo(100.0)
        }

 
        
    }
}


extension CameraView {
    
    func openCameraButtonPressed() {
        delegate?.openCameraSelected()
        
    }
    
    func openPhotoLibraryButtonPressed() {
        delegate?.openPhotoLibrarySelected()
    }
}
