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
    var navigationOrientation: UIPageViewControllerNavigationOrientation!
    var pageTitles = ["Photo", "Name", "Age", "Cost"]
    var viewControllers = [UIViewController]()
    var blurView = Blurview()
    
    let pages = [Page(title: "Item Photo", description: "Take a photo"), Page(title: "Item Name", description: "Give your item a name"), Page(title: "Item Age", description: "Enter age in months"), Page(title: "Item Price", description: "Enter how much it cost")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        
        print("1")
        
        let pc = UIPageControl.appearance()
        pc.pageIndicatorTintColor = UIColor.clear
        pc.currentPageIndicatorTintColor = UIColor.bone
        pc.backgroundColor = UIColor.clear 
        
        
        
        blurView = Blurview(frame: CGRect.init(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height))
        //view.addSubview(blurView)
        pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        
        pageViewController.dataSource = self
        
        pageViewController?.view.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.height)
        
        restartAction(sender: self)
        
        self.addChildViewController((self.pageViewController)!)
        self.view.addSubview((self.pageViewController?.view)!)
        self.pageViewController?.didMove(toParentViewController: self)
        print("4")
        
    }
    
    
    
    func restartAction(sender: Any) {
        
        pageViewController.setViewControllers([self.viewControllerAtIndex(index: 0)], direction: .forward, animated: true, completion: nil)
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


//MARK: PageViewControllerDataSource Methods


extension NewItemDetailViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let vc = viewController as! ContentViewController
        
        var index = vc.pageIndex
        
        if (index == 0 || index == NSNotFound) {
            return nil
        }
        index -= 1
        return self.viewControllerAtIndex(index: index)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let vc = viewController as? ContentViewController {
            var index = vc.pageIndex
            if (index == NSNotFound) {
                return nil
            }
            index += 1
            if (index == pages.count) {
                return nil
            }
            return self.viewControllerAtIndex(index: index)
        }
        
        
        return nil
    }
    
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    
}







