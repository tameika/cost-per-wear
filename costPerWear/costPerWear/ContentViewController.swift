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
 
        self.view.backgroundColor = UIColor.red
        pageLabel = UILabel(frame: CGRect.init(x: 20.0, y: 10.0, width: 100.0, height: 100.0))
        pageLabel.backgroundColor = UIColor.blue
        pageLabel.text = pages[self.pageIndex].title
        self.view.addSubview(pageLabel)
        
        pageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        pageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0.0).isActive = true
        pageLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0.0).isActive = true
        pageLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: -50.0).isActive = true
        pageLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -50.00).isActive = true
        


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
