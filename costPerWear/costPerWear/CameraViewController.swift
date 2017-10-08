//
//  CameraViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/14/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController {
    
    var camera = Camera()
    
    //var imagePicked: UIImageView!
    
    weak var cameraView: CameraView!
    weak var imagePicked: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
}

extension CameraViewController: CameraViewDelegate {
    
    func onTapTakePhoto() {
        
        var output = camera.capturePhotoOutput
        
         // Make sure capturePhotoOutput is valid
        
        guard let capturePhotoOutput = output else { return }
        
         // Get an instance of AVCapturePhotoSettings class
        
        let photoSettings = AVCapturePhotoSettings()
        photoSettings.isAutoStillImageStabilizationEnabled = true
        photoSettings.isHighResolutionPhotoEnabled = true
        photoSettings.flashMode = .auto
        
        // Call capturePhoto method by passing our photo settings and a delegate implementing AVCapturePhotoCaptureDelegate
        
        output?.capturePhoto(with: photoSettings, delegate: self)
        
    }
}

extension CameraViewController: AVCapturePhotoCaptureDelegate {
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photoSampleBuffer: CMSampleBuffer?, previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?) {
        
         // Make sure we get some photo sample buffer
        
        guard error == nil, let photoSampleBuffer = photoSampleBuffer else { print("Error capturing photo: \(String(describing: error))"); return }
        
        
        // Convert photo same buffer to a jpeg image data by using AVCapturePhotoOutput
        
        guard let imageData = AVCapturePhotoOutput.jpegPhotoDataRepresentation(forJPEGSampleBuffer: photoSampleBuffer, previewPhotoSampleBuffer: previewPhotoSampleBuffer) else { return }
    
    // initialize a UIImage with our image data
        
    let capturedImage = UIImage.init(data: image, scale: 1.0)
    guard let image = capturedImage else { return }
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
}

}


