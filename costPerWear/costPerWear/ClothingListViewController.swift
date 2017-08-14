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
    

    var items = ["blue tank", "black sweater", "white tee"]

    var tableView = UITableView()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        self.tableView.isUserInteractionEnabled = true
        

        let screenSize: CGRect = UIScreen.main.bounds
        tableView = UITableView(frame: CGRect.init(x: 0.0, y: 0.0, width: screenSize.width, height: screenSize.height))
        tableView.register(ItemCell.self, forCellReuseIdentifier: "itemCell")

        tableView.delegate = self
        tableView.dataSource = self

        
        tableView.backgroundColor = UIColor.salmon
        
        
        
        view.addSubview(tableView)
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
       var cell = ItemCell()
        
        cell = self.tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        
        let item = items[indexPath.row]
        
        cell.titleLabel.text = item
        print(item)
        
        
        cell.titleLabel?.font = UIFont(name: "Avenir-Light", size: 22)
        cell.titleLabel?.sizeToFit()
        cell.textLabel?.numberOfLines = 0

        cell.titleLabel?.lineBreakMode = .byWordWrapping

        
        print("6")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("i've been touched by an angel")
        //items[indexPath.row]
        let itemDetailVC = ItemViewController()
        navigationController?.pushViewController(itemDetailVC, animated: true)
    }

    
}
