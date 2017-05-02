//
//  NewItemDetailViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/21/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemDetailViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pageViewController: UIPageViewController!
    var datasource: UIPageViewControllerDataSource!
    var delegate: UIPageViewControllerDelegate!
    var pageTitles = ["Photo", "Name", "Age", "Cost"]
    
    var itemImageVC: UIViewController!
    var itemNameVC: UIViewController!
    var itemAgeVC: UIViewController!
    var itemPurchasePriceVC: UIViewController!
    var contentViewController = UIViewController()
    
    var viewControllers = [UIViewController]()
    
    let pages = [Page(title: "Item Photo", description: "Take a photo"), Page(title: "Item Name", description: "Give your item a name"), Page(title: "Item Age", description: "Enter age in months"), Page(title: "Item Price", description: "Enter how much it cost")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        pageViewController?.dataSource = self
        pageViewController?.delegate = self

        pageViewController?.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
        self.pageViewController?.view.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height - 30.0)
        self.addChildViewController((pageViewController)!)
        self.view.addSubview((pageViewController?.view)!)
        self.pageViewController?.didMove(toParentViewController: self)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func viewControllerAtIndex(index: Int) -> UIViewController {
        
        if (pages.count == 0) || (index >= pages.count) {
            
            return contentViewController
        }
        
        
        
        return self
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        viewControllers =  [self.itemImageVC, self.itemNameVC, self.itemAgeVC, self.itemPurchasePriceVC]
        let index = 0
        
        if viewController != viewControllers[index] {
            
            
            return viewControllers[index - 1]
            
        } else {
            
        }
        
        return viewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        viewControllers =  [self.itemImageVC, self.itemNameVC, self.itemAgeVC, self.itemPurchasePriceVC]
        let index = viewControllers.count - 1
        
        if viewController != viewControllers[index] {
            
                        
            return viewControllers[index + 1]
            
        } else {
            
        }
        
        return viewController
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    
}










