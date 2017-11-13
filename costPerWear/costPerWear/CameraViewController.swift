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
    
//    let camera = Camera()
//    var cameraView = CameraView()
    
    var previewView = UIView()
    var cameraImageView = UIImageView()
    
    override var prefersStatusBarHidden: Bool { return true }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        cameraView = CameraView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
//        cameraView.delegate = self
//        view.addSubview(cameraView)
//
    }
    
    
    
//
//    func startSession() {
//
//    }
//
//    func capturePhoto(_ sender: Any) {
//        onTapTakePhoto()
//    }
//
    
    func didTakePhoto(button: UIButton) {
        
        
    }

   
}

