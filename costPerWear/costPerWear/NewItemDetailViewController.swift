//
//  NewItemDetailViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/21/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemDetailViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageViewController: UIPageViewController?
    var datasource: UIPageViewControllerDataSource!
    var delegate: UIPageViewControllerDelegate!
    var pageTitles = ["Photo", "Name", "Age", "Cost"]
    
    
    
    lazy var itemImageVC: UIViewController = {
    }()
    var itemNameVC: UIViewController!
    var itemAgeVC: UIViewController!
    var itemPurchasePriceVC: UIViewController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        pageViewController?.dataSource = self
        pageViewController?.setViewControllers([itemImageVC, itemNameVC, itemImageVC, itemPurchasePriceVC], direction: .forward, animated: true, completion: nil)
        
        self.pageViewController?.view.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height - 30.0)
        self.addChildViewController((pageViewController)!)
        self.view.addSubview((pageViewController?.view)!)
        self.pageViewController?.didMove(toParentViewController: self)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageTitles.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}










