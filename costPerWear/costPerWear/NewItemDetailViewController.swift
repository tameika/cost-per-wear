//
//  NewItemDetailViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/21/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemDetailViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var datasource = UIPageViewControllerDataSource()
    var delegate = UIPageViewControllerDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func creatPageViewController() -> UIPageViewController {
        
        let newItemDetailsVC: UIPageViewController
        
       newItemDetailsVC = UIPageViewController.init(transitionStyle: .pageCurl, navigationOrientation: .horizontal, options: <#T##[String : Any]?#>)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
