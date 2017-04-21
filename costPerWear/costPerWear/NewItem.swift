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


