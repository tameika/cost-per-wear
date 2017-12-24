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
    var newItemDetailVC = NewItemDetailViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.clear
        
        self.blurView = Blurview(frame: CGRect.init(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
        view.addSubview(blurView)
        
        self.contentView = ContentView(frame: CGRect.init(x: 0.0, y: 0.0, width: 400.0, height: 510.0))
        contentView.backgroundColor = UIColor.clear
        getPages()
        contentView.delegate = self
        
        self.view.addSubview(self.contentView)
        
        
        
    }
    
}


extension ContentViewController {
    
    func getPages() {
    let pages = newItemDetailVC.pages

        for i in pages {
            let page = i
            print("👽 \(page)")
            contentView.pageTitle.text = page.title
            contentView.pageDescription.text = page.description
        }
    }

    func cancelSelected() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func enterSelected() {
        print("enter selected")
    }
}


