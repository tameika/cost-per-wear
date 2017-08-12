//
//  ClothingListViewController.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/11/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import UIKit

class ClothingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let reuseIdentifier = "itemCell"

    var items = ["blue tank, black sweater, white tee"]

    var tableView = UITableView()
 

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self(<#T##NSObject#>), forCellReuseIdentifier: "itemCell")
        
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let itemDetailVC = ItemViewController()
        navigationController?.present(itemDetailVC, animated: true, completion: nil)
    }

    
}
