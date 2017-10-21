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
    var qrCodeFrameView: UIView?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        previewView = UIView(frame: CGRect.zero)
        previewView.clipsToBounds = true
        previewView.backgroundColor = UIColor.deepTeal
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
        
        
        
        
//        openCameraBtn = UIButton(frame: CGRect.zero)
//        openCameraBtn = UIButton(type: .roundedRect)
//        //openCameraBtn.layer.cornerRadius = 20.0
//        openCameraBtn.backgroundColor = UIColor.bone
//        openCameraBtn.setTitle("enter!", for: .normal)
//        openCameraBtn.addTarget(self, action: #selector(openCameraButtonPressed), for: .touchUpInside)
//        addSubview(openCameraBtn)
//        openCameraBtn.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview()
//            make.centerY.equalToSuperview().inset(120)
//            make.height.equalTo(50.0)
//            make.width.equalTo(100.0)
//        }
//
//
//
//        openPhotoLibraryBtn = UIButton(frame: CGRect.zero)
//        openPhotoLibraryBtn = UIButton(type: .roundedRect)
//        openPhotoLibraryBtn.layer.cornerRadius = 20.0
//        openPhotoLibraryBtn.backgroundColor = UIColor.bone
//        openPhotoLibraryBtn.setTitle("enter!", for: .normal)
//        openPhotoLibraryBtn.addTarget(self, action: #selector(openPhotoLibraryButtonPressed), for: .touchUpInside)
//        addSubview(openPhotoLibraryBtn)
//        openPhotoLibraryBtn.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview()
//            make.centerY.equalTo(openCameraBtn).inset(120)
//            make.height.equalTo(50.0)
//            make.width.equalTo(100.0)
//        }

 
        
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
    }
    
}
