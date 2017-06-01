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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pc = UIPageControl.appearance()
        pc.pageIndicatorTintColor = UIColor.black
        pc.currentPageIndicatorTintColor = UIColor.white
        pc.backgroundColor = UIColor.green

        
        self.view.backgroundColor = UIColor.white
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: [UIPageViewControllerOptionInterPageSpacingKey: 1.0])
        
        //self.pageViewController.dataSource = self
        
        self.pageViewController?.view.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height - 30.0)
        self.restartAction(sender: self)

        self.addChildViewController((pageViewController)!)
        self.view.addSubview((pageViewController?.view)!)
        self.pageViewController?.didMove(toParentViewController: self)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func restartAction(sender: Any) {
        
        self.pageViewController.setViewControllers([self.viewControllerAtIndex(index: 0)], direction: .forward, animated: true, completion: nil)
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
        print(1.1)
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
            print(2.1)
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







