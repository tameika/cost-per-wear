//
//  CameraView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/14/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
import SnapKit


// GITHUB/RIZWANKCE

protocol CameraViewDelegate: class {
    
//    func openCameraSelected()
//    func openPhotoLibrarySelected()
    
    func onTapTakePhoto()
}

class CameraView: UIView {
    
    weak var delegate: CameraViewDelegate?
    
    var previewView: UIView!
    var captureBtn: UIButton!
    var messageLabel: UILabel!
    var qrCodeFrameView: UIView!

        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        previewView = UIView(frame: CGRect.zero)
        previewView.clipsToBounds = true
        previewView.backgroundColor = UIColor.blueSmoke
        addSubview(previewView)
        previewView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(500.0)
            make.width.equalTo(frame.width)
        }
        
        captureBtn = UIButton(frame: CGRect.zero)
        captureBtn.layer.cornerRadius = 35.0
        captureBtn.translatesAutoresizingMaskIntoConstraints = false 
        captureBtn.clipsToBounds = true
        captureBtn.layer.borderWidth = 4.0
        captureBtn.layer.borderColor = UIColor.bone.cgColor
        captureBtn.backgroundColor = UIColor.lightGray
        captureBtn.addTarget(self, action: #selector(capturePhotoBtnTapped), for: .touchUpInside)
        addSubview(captureBtn)
        captureBtn.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().inset(290.0)
            make.height.equalTo(70.0)
            make.width.equalTo(70.0)
        }
        
        
        messageLabel = UILabel(frame: CGRect.zero)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.clipsToBounds = true
        messageLabel.backgroundColor = UIColor.eggplantMute
        addSubview(messageLabel)
        messageLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(150.0)
            make.centerY.equalToSuperview().inset(290.0)
            make.height.equalTo(40.0)
            make.width.equalTo(60.0)
        }
        
        
        
        qrCodeFrameView = UIView(frame: CGRect.zero)
        qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
        qrCodeFrameView.layer.borderWidth = 2
        addSubview(qrCodeFrameView)
        bringSubview(toFront: qrCodeFrameView)
        
        
        
        
    }
}


extension CameraView {
    
//    @objc func openCameraButtonPressed() {
//        delegate?.openCameraSelected()
//        
//    }
//    
//    @objc func openPhotoLibraryButtonPressed() {
//        delegate?.openPhotoLibrarySelected()
//    }
    
    @objc func capturePhotoBtnTapped() {
        delegate?.onTapTakePhoto()
        print("capture button tapped")
    }
    
}
