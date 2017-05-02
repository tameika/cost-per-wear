//
//  NewItemDetailViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/21/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemDetailViewController: UIViewController {
    
    var pageViewController: UIPageViewController!
    var datasource: UIPageViewControllerDataSource!
    var delegate: UIPageViewControllerDelegate!
    var pageTitles = ["Photo", "Name", "Age", "Cost"]
    
//    var itemImageVC = UIViewController()
//    var itemNameVC: UIViewController!
//    var itemAgeVC: UIViewController!
//    var itemPurchasePriceVC: UIViewController!
    //var contentViewController = UIViewController()
    
    var viewControllers = [UIViewController]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        self.pageViewController.dataSource = self
        //pageViewController?.delegate = self

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
            
            return ContentViewController()
        }
        
        let vc = ContentViewController()
        vc.pageIndex = index
        
        return vc
    }
    

    func viewControllerTest() {
        print("five")
    }
    
}


extension ViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let vc = viewController as? ContentViewController // or self
        var index = (vc?.pageIndex)! as Int
        
        if (index == 0 || index == NSNotFound) {
            return nil
        }
        index += 1
        
        return self
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return self
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}







