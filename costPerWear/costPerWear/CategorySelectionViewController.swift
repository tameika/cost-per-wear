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
        print("will appear")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        createAnimations()
        
        print("did appear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did load")
        
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
    
    func createAnimations() {
        
        guard let topsBtn = categoryView.topsBtn else { return }
        guard let bottomsBtn = categoryView.bottomsBtn else { return }
        guard let dressesBtn = categoryView.dressesBtn else { return }
        guard let shoesBtn = categoryView.shoesBtn else { return }
        guard let addBtn = categoryView.addBtn else { return }
        categoryView.animateCategoryButtons(button: topsBtn, animation: "pop", delay: 0.90, duration: 1.5, force: 1.3)
        categoryView.animateCategoryButtons(button: bottomsBtn, animation: "pop", delay: 0.70, duration: 1.5, force: 1.5)
        categoryView.animateCategoryButtons(button: dressesBtn, animation: "pop", delay: 0.60, duration: 1.5, force: 1.1)
        categoryView.animateCategoryButtons(button: shoesBtn, animation: "pop", delay: 0.80, duration: 1.5, force: 1.6)
        categoryView.animateCategoryButtons(button: addBtn, animation: "pop", delay: 1.10, duration: 2.0, force: 1.0)
        
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






