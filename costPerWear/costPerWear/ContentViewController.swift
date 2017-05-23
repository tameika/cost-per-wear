//
//  ContentViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 5/2/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    var pageIndex: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var pageLabel = UILabel()
        var pageDescription = UILabel()
 
        self.view.backgroundColor = UIColor.lightGray
        
        pageLabel = UILabel(frame: CGRect.init(x: 70.0, y: 100.0, width: 100.0, height: 50.0))
        pageLabel.backgroundColor = UIColor.green
        pageLabel.text = pages[self.pageIndex].title
        self.view.addSubview(pageLabel)
        
//        pageLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        pageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
//        pageLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
//        pageLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
//        pageLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.00).isActive = true
        
        pageDescription = UILabel(frame: CGRect.init(x: 70.0, y: 200.0, width: 200.0, height: 50.0))
        pageDescription.backgroundColor = UIColor.red
        pageDescription.text = pages[self.pageIndex].description
        self.view.addSubview(pageDescription)
        
//        pageDescription.translatesAutoresizingMaskIntoConstraints = false
//        
//        pageDescription.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
//        pageDescription.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
//        pageDescription.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
//        pageDescription.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.00).isActive = true
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
