//
//  CamViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 11/12/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import AVFoundation
import SnapKit

class CamViewController: UIViewController {
    
    //captureSession helps us to transfer data between one or more device inputs like camera or microphone and view videoPreviewLayer helps to render the camera view finder in our ViewController
    
    var captureSession = AVCaptureSession()
    var videoPreviewLayer = AVCaptureVideoPreviewLayer()
    var capturePhotoOutput = AVCapturePhotoOutput()
    var cameraView = CameraView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cameraView = CameraView(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        view.addSubview(cameraView)
        cameraView.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(input)
            capturePhotoOutput.isHighResolutionCaptureEnabled = true
            captureSession.addOutput(capturePhotoOutput)
            
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
            captureMetadataOutput.setMetadataObjectsDelegate(self as? AVCaptureMetadataOutputObjectsDelegate, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = [.qr]
            
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            videoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            videoPreviewLayer.frame = view.layer.bounds
            guard let previewView = cameraView.previewView else { return }
            previewView.layer.addSublayer(videoPreviewLayer)
            
            captureSession.startRunning()
            
            guard let messageLabel = cameraView.messageLabel else { return }
            messageLabel.isHidden = true
            
            
            
        } catch {
            print(error)
            return
        }
        
    }
    
    func onTapTakePhoto(sender: Any) {
        let capturePhotoOutput = self.capturePhotoOutput
        
        // Get an instance of AVCapturePhotoSettings class
        let photoSettings = AVCapturePhotoSettings()
        
        // Set photo settings for our need
        photoSettings.isAutoStillImageStabilizationEnabled = true
        photoSettings.isHighResolutionPhotoEnabled = true
        photoSettings.flashMode = .auto
        
        // Call capturePhoto method by passing our photo settings and a delegate implementing AVCapturePhotoCaptureDelegate
        capturePhotoOutput.capturePhoto(with: photoSettings, delegate: self)
        
    }
    
    
    
}


extension CamViewController: AVCapturePhotoCaptureDelegate {
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photoSampleBuffer: CMSampleBuffer?, previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?) {
        
        // Make sure we get some photo sample buffer
        guard error == nil, let photoSampleBuffer = photoSampleBuffer else { print("Error capturing photo: \(String(describing: error))"); return }
        
        
        // Convert photo same buffer to a jpeg image data by using AVCapturePhotoOutput
        guard let imageData = AVCapturePhotoOutput.jpegPhotoDataRepresentation(forJPEGSampleBuffer: photoSampleBuffer, previewPhotoSampleBuffer: previewPhotoSampleBuffer) else { return }
        
        // initialize a UIImage with our image data
        let capturedImage = UIImage.init(data: imageData, scale: 1.0)
        guard let image = capturedImage else { return }
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
}

extension CamViewController: AVCaptureMetadataOutputObjectsDelegate {
    
        func captureOutput(_ captureOutput: AVCaptureOutput!,
                           didOutputMetadataObjects metadataObjects: [Any]!,
                           from connection: AVCaptureConnection!) {
            // Check if the metadataObjects array is not nil and it contains at least one object.
            if metadataObjects == nil || metadataObjects.count == 0 {
                cameraView.qrCodeFrameView?.frame = CGRect.zero
                cameraView.messageLabel.isHidden = true
                return
            }
            
            // Get the metadata object.
            let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
            
            if metadataObj.type == AVMetadataObject.ObjectType.qr {
                // If the found metadata is equal to the QR code metadata then update the status label's text and set the bounds
                let barCodeObject = videoPreviewLayer.transformedMetadataObject(for: metadataObj)
                cameraView.qrCodeFrameView?.frame = barCodeObject!.bounds
                
                if metadataObj.stringValue != nil {
                    cameraView.messageLabel.isHidden = false
                    cameraView.messageLabel.text = metadataObj.stringValue
                    debugPrint(metadataObj.stringValue as Any)
                }
            }
        }
}























