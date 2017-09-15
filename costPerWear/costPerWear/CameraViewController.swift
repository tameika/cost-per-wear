//
//  CameraViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/14/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    
    var imagePicked: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    

   
}


extension CameraViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    
    func openCamera(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func openPhotoLibrary(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)

        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imagePicked.image = image
        dismiss(animated: true, completion: nil)
    }
    
    
    func saveImage(sender: AnyObject) {
        guard let image = imagePicked.image else { print("could not unwrap image"); return }
        guard let imageData = UIImageJPEGRepresentation(image, 0.6) else { print("could not jpg"); return }
        guard let compressedJPGImage = UIImage(data: imageData) else { print("could not compress"); return }
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage, nil, nil, nil)
    }
    
    
}
