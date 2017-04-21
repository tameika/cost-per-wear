//
//  NewItemDetailViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/21/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemDetailViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var datasource: UIPageViewControllerDataSource!
    var delegate: UIPageViewControllerDelegate!
    
    
    lazy var itemImageVC: UIViewController = {
    }()
    var itemNameVC: UIViewController!
    var itemAgeVC: UIViewController!
    var itemPurchasePriceVC: UIViewController!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        creatPageViewController().setViewControllers([itemImageVC, itemNameVC, itemImageVC, itemPurchasePriceVC], direction: .forward, animated: true)
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func creatPageViewController() -> UIPageViewController {
        
        let enterNewItemDetailVC: UIPageViewController
        let UIPageViewControllerOptionInterPageSpacingKey: String
        enterNewItemDetailVC = UIPageViewController.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        return enterNewItemDetailVC
    }
    
    
    

    

}










