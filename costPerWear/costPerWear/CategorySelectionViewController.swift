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
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = UIColor.richOrange
        categoryView = CategoryView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        
        categoryView.delegate = self
        view.addSubview(categoryView)
        
    }
    
    
    func categorySelected() {
        let clothingListVC = ClothingListViewController()
        navigationController?.pushViewController(clothingListVC, animated: true)
        
    }
    
    
    
    //        let tag = sender.tag
    //        switch tag {
    //        case 1:
    //            print("tops selected")
    //        case 2:
    //            print("bottoms selected")
    //        case 3:
    //            print("dresses selected")
    //        case 4:
    //            print("shoes selected")
    //        default:
    //            print("none selected")
    //        }
    
    
    
    
    
    
}






