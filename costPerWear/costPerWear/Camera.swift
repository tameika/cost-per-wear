//
//  Camera.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 10/8/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import AVFoundation


class Camera {
    
    var captureSession: AVCaptureSession?
    var capturePhotoOutput: AVCapturePhotoOutput?

    
    class func test() {
        
        //var videoPreviewLayer: AVCaptureVideoPreviewLayer?
        
        let captureDevice = AVCaptureDevice.default(for: .video)
        
        do {
            
            let input = try AVCaptureInput(captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            
            capturePhotoOutput = AVCapturePhotoOutput()
            capturePhotoOutput?.isHighResolutionCaptureEnabled = true
            
            captureSession?.addOutput(capturePhotoOutput)
            
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession?.addOutput(captureMetadataOutput)
            
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: dispatchMain())
            captureMetadataOutput.metadataObjectTypes = [.qr]
            
            captureSession?.startRunning()
        } catch {
            
            print(error)
            return
        }
    }
    
    
    
    
}
