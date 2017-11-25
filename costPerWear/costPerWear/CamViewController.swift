//
//  CamViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 11/12/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import AVFoundation

class CamViewController: UIViewController {
    
    //captureSession helps us to transfer data between one or more device inputs like camera or microphone and view videoPreviewLayer helps to render the camera view finder in our ViewController
    
    var captureSession = AVCaptureSession()
    var videoPreviewLayer = AVCaptureVideoPreviewLayer()
    var capturePhotoOutput = AVCapturePhotoOutput()
    var cameraView = CameraView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(input)
            capturePhotoOutput.isHighResolutionCaptureEnabled = true
            captureSession.addOutput(capturePhotoOutput)
            
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
            captureMetadataOutput.setMetadataObjectsDelegate(self as? AVCaptureMetadataOutputObjectsDelegate, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
            
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            videoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            videoPreviewLayer.frame = view.layer.bounds
            guard let previewView = cameraView.previewView else { return }
            previewView.layer.addSublayer(videoPreviewLayer)
            
            captureSession.startRunning()
            
            guard let messageLabel = cameraView.messageLabel else { return }
            messageLabel.isHidden = true
            
            // qrcode code here
            
        } catch {
            print(error)
            return
        }
        
    }
    
    func onTapTakePhoto(sender: Any) {
        
    }
    
    
    
}
