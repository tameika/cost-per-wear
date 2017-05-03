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

    var pageTitles = ["Photo", "Name", "Age", "Cost"]
    

    var viewControllers = [UIViewController]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        self.pageViewController.dataSource = self
        //pageViewController?.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
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
    

    
}


extension NewItemDetailViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vc = viewController as? ContentViewController else {print("fail 1"); return pageViewController }
        var index = (vc.pageIndex) as Int
        
        if (index == 0 || index == NSNotFound) {
            return nil
        }
        index -= 1
        print(1.1)
        return self.viewControllerAtIndex(index: index)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vc = viewController as? ContentViewController else {print("fail 2"); return pageViewController }
        var index = (vc.pageIndex!) as Int
        if (index == NSNotFound) {
            return nil
        }
        index += 1
        if (index == pages.count) {
            return nil
        }
        print(2.1)
        return self.viewControllerAtIndex(index: index)
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}







