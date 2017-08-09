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
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryView.delegate = self
        
        addBtnTargets()
        
        navigationController?.isNavigationBarHidden = true 

        view.backgroundColor = UIColor.rose
            categoryView = CategoryView(frame: CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
            view.addSubview(categoryView)
        
g    }
    
    func addBtnTargets() {
        categoryView.topsBtn.addTarget(self, action: #selector(categoryButtonPressed), for: .touchUpInside)
        categoryView.bottomsBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)
        categoryView.dressesBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)
        categoryView.shoesBtn.addTarget(self, action: Selector(("categoryBtnPressed")), for: .touchUpInside)

    }
   
   
    func categoryButtonAction() {
        
        let clothingListVC = ClothingListTableViewController()
        navigationController?.pushViewController(clothingListVC, animated: true)
    }
    
    
 func categoryButtonPressed(sender: UIButton) {
        let tag = sender.tag
        switch tag {
        case 1:
            print("tops selected")
        case 2:
            print("bottoms selected")
        case 3:
            print("dresses selected")
        case 4:
            print("shoes selected")
        default:
            print("none selected")
        }
        
    }

    
}


extension CategoryView {
    
//    func categoryButtonPressed(sender: UIButton) {
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
//        
//    }
    
    
}


   
