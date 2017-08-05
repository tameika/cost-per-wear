//
//  NewItemViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    var itemDetails = ItemDetailView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true 
        self.view.backgroundColor = UIColor.rose
        
        itemDetails = ItemDetailView(frame: CGRect.zero)
        self.view.addSubview(itemDetails)
        

    }
    
    
   
  

}
























