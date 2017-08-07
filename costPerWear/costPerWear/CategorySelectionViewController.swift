//
//  CategorySelectionViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/7/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class CategorySelectionViewController: UIViewController, CategoryViewDelegate {
    
    var categoryView = CategoryView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryView.delegate = self
        
        view.backgroundColor = UIColor.rose 
            categoryView = CategoryView(frame: CGRect.zero)
            view.addSubview(categoryView)
    
    }
   
   
    func categoryButtonPressed() {
        
        let clothingListVC = ClothingListTableViewController()
        navigationController?.pushViewController(clothingListVC, animated: true)
    }

    
}



   
