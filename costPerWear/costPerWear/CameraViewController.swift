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
    
    //var imagePicked: UIImageView!
    
    weak var cameraView: CameraView!
    weak var imagePicked: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
}


extension CameraViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate, CameraViewDelegate {
    
    func openCameraSelected() {
        print(3)
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func openPhotoLibrarySelected() {
        print(4)
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)

        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print(5)
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagePicked.image = image
        dismiss(animated: true, completion: nil)
    }
    
    
    func saveImage(sender: AnyObject) {
        print(6)
        //guard let image = imagePicked.imge else { print("casting failed"); return }
        let imageData = UIImageJPEGRepresentation(imagePicked.image!, 0.6) //else { print("could not jpg"); return }
        let compressedJPGImage = UIImage(data: imageData!) // else { print("could not compress"); return }
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
    }
    
    
}
