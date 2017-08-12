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
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        
        let screenSize: CGRect = UIScreen.main.bounds
        tableView = UITableView(frame: CGRect.init(x: 0.0, y: 0.0, width: screenSize.width, height: screenSize.height))

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.backgroundColor = UIColor.salmon
        self.tableView.isUserInteractionEnabled = true
        
        tableView.register(ItemCell.self as AnyClass, forCellReuseIdentifier: "itemCell")
        view.addSubview(tableView)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print("3")
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("4")
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("5")
        
        var cell: ItemCell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        
        if cell == nil {
            
            cell = ItemCell(style: .default, reuseIdentifier: "itemCell")
        }
        
        //cell.backgroundColor = UIColor.salmon
        cell.setupCell()
        cell.titleLabel.text = "smile"
        
        print("6")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("i've been touched by an angel")
        //items[indexPath.row]
        let itemDetailVC = ItemViewController()
        navigationController?.present(itemDetailVC, animated: true, completion: nil)
    }

    
}
