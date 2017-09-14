//
//  ContentViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 5/2/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, ContentViewDelegate {
    
    var pageIndex = 0
    var itemDetails = ItemDetailView()
    var contentView = ContentView()
    var blurView = Blurview()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.clear
        
        self.contentView = ContentView(frame: CGRect.init(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
        //contentView.pageTitle.text = pages[self.pageIndex].title
        //contentView.pageDescription.text = pages[self.pageIndex].description
        contentView.delegate = self
        
        self.view.addSubview(self.contentView)
        
        self.blurView = Blurview(frame: CGRect.init(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
        //view.addSubview(blurView)
        
        
    }
    
}


extension ContentViewController {
    
    func cancelSelected() {
        print("inside cancel selected")
        self.dismiss(animated: true, completion: nil)
    }
    
    func enterSelected() {
        print("enter selected")
    }
}


