//
//  CellView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/11/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit


class ItemCell: UITableViewCell {
    
    
    var cpwLabel: UILabel!
    var titleLabel: UILabel!
    
    func setupCell() {
        
        titleLabel = UILabel(frame: CGRect.init(x: 0.0, y: 0.0, width: 170.0, height: 50.0))
        cpwLabel = UILabel(frame: CGRect.init(x: 100.0, y: 0.0, width: 30.0, height: 50.0))
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(cpwLabel)

    }
}
