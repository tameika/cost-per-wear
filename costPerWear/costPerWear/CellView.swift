//
//  CellView.swift
//  costPerWear
//
//  Created by Tameika Lawrence on 8/11/17.
//  Copyright © 2017 Tameika Lawrence. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


class ItemCell: UITableViewCell {
    
    
    var cpwLabel: UILabel!
    var titleLabel: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = UIColor.yellow
        selectionStyle = .default
        titleLabel = UILabel()
        titleLabel = UILabel(frame: CGRect.zero)
        titleLabel.textAlignment = .left
        textLabel?.textColor = UIColor.coffeeBean
        contentView.addSubview(titleLabel)
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.clipsToBounds = true
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview().inset(2.0)
            make.centerY.equalToSuperview().inset(2.0)
            make.height.equalTo(50.0)
            make.width.equalTo(170.0)
        }
        
    }
    
    
}
