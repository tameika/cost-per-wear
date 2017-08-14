//
//  ContentViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 5/2/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    var pageIndex = 0
    var contentPage = ContentView()
    var itemDetails = ItemDetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatConstraints()
        
        self.view.backgroundColor = UIColor.lightGray
        //contentPage = ContentView()
        contentPage.pageTitle.text = pages[self.pageIndex].title
        contentPage.pageDescription.text = pages[self.pageIndex].description
        self.view.addSubview(contentPage)
        
        self.contentPage.enterBtn.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        
        // Should the above be included in view controller?
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func pressed() {
        print("testing testing")
        
        
        let vcAtIndex = NewItemDetailViewController()
        guard let textfieldEntry = contentPage.textfieldEntry else { return }
        
        switch pageIndex {
        case 0:
            itemDetails.itemImage.image = UIImage()
            
            present(vcAtIndex.viewControllerAtIndex(index: 1), animated: true, completion: nil)
        case 1:
            itemDetails.itemName.text = "test text"
            present(vcAtIndex.viewControllerAtIndex(index: 2), animated: true, completion: nil)
        case 2:
            itemDetails.itemAge.text = textfieldEntry.text
            present(vcAtIndex.viewControllerAtIndex(index: 3), animated: true, completion: nil)
        case 3:
            itemDetails.itemPurchasePrice.text = textfieldEntry.text
        default:
            return
        }
        
        if !(textfieldEntry.text?.isEmpty)! {
            
            present(ItemViewController(), animated: true, completion: nil)
            
            
        }
    }
    
    // MARK: TO DO: Recreate with snapkit
    
    func creatConstraints() {
        
        contentPage.pageTitle.translatesAutoresizingMaskIntoConstraints = false
        contentPage.pageTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        contentPage.pageTitle.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        contentPage.pageTitle.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        contentPage.pageTitle.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.0).isActive = true
        
        contentPage.pageDescription.translatesAutoresizingMaskIntoConstraints = false
        contentPage.pageDescription.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        contentPage.pageDescription.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        contentPage.pageDescription.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        contentPage.pageDescription.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.0).isActive = true
        
        
        contentPage.textfieldEntry.translatesAutoresizingMaskIntoConstraints = false
        contentPage.textfieldEntry.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        contentPage.textfieldEntry.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        contentPage.textfieldEntry.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        contentPage.textfieldEntry.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.0).isActive = true
        
        
        contentPage.enterBtn.translatesAutoresizingMaskIntoConstraints = false
        contentPage.enterBtn.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        contentPage.enterBtn.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        contentPage.enterBtn.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        contentPage.enterBtn.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.0).isActive = true
        
        
    }
    
    
}
