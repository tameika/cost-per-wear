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
    
    class func test() {
        
        var captureSession: AVCaptureSession?
        var videoPreviewLayer: AVCaptureVideoPreviewLayer?
        var capturePhotoOutput: AVCapturePhotoOutput?
        
        let captureDevice = AVCaptureDevice.default(for: .video)
        
        do {
            
            let input = try AVCaptureInput(captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
        }
    }
    
    
    
    
}
