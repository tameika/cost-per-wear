//
//  CategorySelectionViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/7/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import Spring


class CategorySelectionViewController: UIViewController, CategoryViewDelegate {
    
    var categoryView = CategoryView()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        categoryView.createAnimations()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.richOrange
        categoryView = CategoryView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        
        categoryView.delegate = self
        view.addSubview(categoryView)
        
    }
    
    
    func categorySelected() {
        let clothingListVC = ClothingListViewController()
        navigationController?.pushViewController(clothingListVC, animated: true)
    }
    
    func addSelected() {
        let newItemDetailVC = NewItemDetailViewController()
        newItemDetailVC.modalPresentationStyle = .overCurrentContext
        present(newItemDetailVC, animated: true, completion: nil)
        
    }
    
    
}






