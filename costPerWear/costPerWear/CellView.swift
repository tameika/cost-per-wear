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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel = UILabel(frame: CGRect.init(x: 0.0, y: 0.0, width: 100.0, height: 50.0))

        titleLabel.backgroundColor = UIColor.yellow
        contentView.addSubview(titleLabel)

    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    
    
//    func setupCell() {
//        
//        titleLabel = UILabel(frame: CGRect.init(x: 0.0, y: 0.0, width: 170.0, height: 30.0))
//        //cpwLabel = UILabel(frame: CGRect.init(x: 100.0, y: 0.0, width: 30.0, height: 50.0))
//        self.contentView.addSubview(titleLabel)
//        //self.contentView.addSubview(cpwLabel)
//
//    }
    
}
