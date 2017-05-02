//
//  tem.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 4/20/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation

struct Item {
    
    var itemName: String
    var itemAge: String
    var itemPurchasePrice: Double
    var itemTags: [String]
    var dateCreated: String

    
    init(itemName: String, itemAge: String, itemPurchasePrice: Double, itemTags: [String], dateCreated: String) {
        self.itemName = itemName
        self.itemAge = itemAge
        self.itemPurchasePrice = itemPurchasePrice
        self.itemTags = itemTags
        self.dateCreated = dateCreated
    }
    
}


struct Page {
    
    var title: String
    var description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}


let pages = [Page(title: "Item Photo", description: "Take a photo"), Page(title: "Item Name", description: "Give your item a name"), Page(title: "Item Age", description: "Enter age in months"), Page(title: "Item Price", description: "Enter how much it cost")]
