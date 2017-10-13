//
//  Camera.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 10/8/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation


class Camera {
    
    static var captureSession: AVCaptureSession?
    static var capturePhotoOutput: AVCapturePhotoOutput?
    
    
    class func createCameraSession() {
        
        //var videoPreviewLayer: AVCaptureVideoPreviewLayer?
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            
            capturePhotoOutput = AVCapturePhotoOutput()
            capturePhotoOutput?.isHighResolutionCaptureEnabled = true
            
            if let capturePhotoOutput = capturePhotoOutput {
                captureSession?.addOutput(capturePhotoOutput)
                
                let captureMetadataOutput = AVCaptureMetadataOutput()
                captureSession?.addOutput(captureMetadataOutput)
                
                captureMetadataOutput.setMetadataObjectsDelegate(CameraViewController(), queue: DispatchQueue.main)
                captureMetadataOutput.metadataObjectTypes = [.qr]
            }
            captureSession?.startRunning()
        } catch {
            print(error)
            return
        }
    }
}


extension CameraViewController: CameraViewDelegate {
    
    func onTapTakePhoto() {
        
        // Make sure capturePhotoOutput is valid
        guard let capturePhotoOutput = Camera.capturePhotoOutput else { return }
        
        // Get an instance of AVCapturePhotoSettings class
        let photoSettings = AVCapturePhotoSettings()
        photoSettings.isAutoStillImageStabilizationEnabled = true
        photoSettings.isHighResolutionPhotoEnabled = true
        photoSettings.flashMode = .auto
        
        // Call capturePhoto method by passing our photo settings and a delegate implementing AVCapturePhotoCaptureDelegate
        capturePhotoOutput.capturePhoto(with: photoSettings, delegate: self)
        
    }
}

extension CameraViewController: AVCapturePhotoCaptureDelegate {
    
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

extension CameraViewController: AVCaptureMetadataOutputObjectsDelegate {
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        let cameraView = CameraView()
        guard let messageLabel = cameraView.messageLabel else { return }
        guard let qrCodeFrameView = cameraView.qrCodeFrameView else { return }
        guard let videoPreviewLayer = cameraView.videoPreviewLayer else { return }
        
        // Check if the metadataObjects array is not nil and it contains at least one object.
        if metadataObjects == nil || metadataObjects.count == 0 {
            qrCodeFrameView.frame = CGRect.zero
            messageLabel.isHidden = true
            return
        }
        
        // Get the metadata object.
        let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
        if metadataObj.type == AVMetadataObject.ObjectType.qr {
            // If the found metadata is equal to the QR code metadata then update the status label's text and set the bounds
            let barCodeObj = videoPreviewLayer.transformedMetadataObject(for: metadataObj)
            qrCodeFrameView.frame = (barCodeObj?.bounds)!
            
            if metadataObj.stringValue != nil {
                messageLabel.isHidden = false
                messageLabel.text = metadataObj.stringValue
                debugPrint(metadataObj.stringValue as Any)
                
            }
        }
    }
}







