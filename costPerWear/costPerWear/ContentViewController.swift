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
    var itemDetails = ItemDetailView()
    var contentView = ContentView()
    var blurView = Blurview()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        
        
        contentView = ContentView(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        contentView.pageTitle.text = pages[self.pageIndex].title
        contentView.pageDescription.text = pages[self.pageIndex].description
        contentView.enterBtn.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        view.addSubview(contentView)
        
        blurView = Blurview(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        view.addSubview(blurView)


        
    }
    
    
    
    func pressed() {        
        
        let vcAtIndex = NewItemDetailViewController()
        guard let textfieldEntry = contentView.textfieldEntry else { return }
        
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
    
     
    
}
