//
//  CameraViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 9/14/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController {
    
    //var imagePicked: UIImageView!
    
    weak var cameraView: CameraView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        cameraView = CameraView(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        
        
        cameraView.delegate = self

    }

    
    

   
}


extension CameraViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate, CameraViewDelegate {
    
    func openCameraSelected() {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func openPhotoLibrarySelected() {
        
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
        guard let imageChosen = cameraView.imagePicked else { print("failed to unwrap image"); return }
        imageChosen.image = image
        dismiss(animated: true, completion: nil)
    }
    
    
    func saveImage(sender: AnyObject) {
        guard let imageChosen = cameraView.imagePicked else { print("failed to unwrap image"); return }
        guard let image = imageChosen.image else { print("could not unwrap image"); return }
        guard let imageData = UIImageJPEGRepresentation(image, 0.6) else { print("could not jpg"); return }
        guard let compressedJPGImage = UIImage(data: imageData) else { print("could not compress"); return }
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage, nil, nil, nil)
    }
    
    
}
