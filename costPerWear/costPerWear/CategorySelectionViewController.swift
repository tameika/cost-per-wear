//
//  CategorySelectionViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/7/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit
import Spring
import AWSUserPoolsSignIn


class CategorySelectionViewController: UIViewController, CategoryViewDelegate {
    
    var categoryView = CategoryView()
    var logOutBtn = UIBarButtonItem()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
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
        print("inside category selected method")
        let clothingListVC = ClothingListViewController()
        //let navClothingListVC = UINavigationController(rootViewController: clothingListVC)
        self.navigationController?.pushViewController(clothingListVC, animated: true)
    }
    
    func addSelected() {
        print("inside add item selected")
        let newItemDetailVC = NewItemDetailViewController()
        newItemDetailVC.modalPresentationStyle = .overCurrentContext
        present(newItemDetailVC, animated: true, completion: nil)
        
    }
    
    
    
    
}






