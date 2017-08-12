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
    
    var itemCell: ItemCell!

    var items = ["blue tank, black sweater, white tee"]

    var tableView = UITableView()
 

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.salmon
    
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        tableView.register(ItemCell.self as AnyClass, forCellReuseIdentifier: "itemCell")
        view.addSubview(tableView)
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: ItemCell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        
        if cell == nil {
            
            cell = ItemCell(style: .default, reuseIdentifier: "itemCell")
        }
        
        cell.setupCell()
        cell.titleLabel.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let itemDetailVC = ItemViewController()
        navigationController?.present(itemDetailVC, animated: true, completion: nil)
    }

    
}
