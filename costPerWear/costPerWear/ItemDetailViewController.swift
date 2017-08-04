//
//  NewItemViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/19/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    
    var newItem: ItemDetailView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        newItem = ItemDetailView(frame: CGRect(x: -20.0, y: 10.0, width: 700.0, height: 600.0))
        self.view.addSubview(newItem)
        

    }
    
    
//
//    override func loadView() {
//        super.loadView()
//        self.view = NewItemView()
//    }
//    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
























