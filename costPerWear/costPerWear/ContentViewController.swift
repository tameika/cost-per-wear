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
    var itemDetails = NewItemView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        self.view.backgroundColor = UIColor.lightGray
        contentPage = ContentView(frame: CGRect.init(x: 0.0, y: 0.0, width: 500.00, height: 794.00))
        contentPage.pageTitle.text = pages[self.pageIndex].title
        contentPage.pageDescription.text = pages[self.pageIndex].description
        self.view.addSubview(contentPage)
        
        
       // Should the above be included in view controller?
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func pressed(_sender: UIButton) {
        print("testing testing")
        
        
        let vcAtIndex = NewItemDetailViewController()
        guard let textfieldEntry = contentPage.textfieldEntry else { return }
        
        switch pageIndex {
        case 0:
            itemDetails.newItemImage.image = UIImage()
            present(vcAtIndex.viewControllerAtIndex(index: 1), animated: true, completion: nil)
        case 1:
            itemDetails.newItemName.text = "test text"
            present(vcAtIndex.viewControllerAtIndex(index: 2), animated: true, completion: nil)
        case 2:
            itemDetails.newItemAge.text = textfieldEntry.text
            present(vcAtIndex.viewControllerAtIndex(index: 3), animated: true, completion: nil)
        case 3:
            itemDetails.newItemPurchasePrice.text = textfieldEntry.text
        default:
            return
        }
        
        if !(textfieldEntry.text?.isEmpty)! {
        
        present(NewItemViewController(), animated: true, completion: nil)
            
            
            
        
            
        }
    }
  
}
