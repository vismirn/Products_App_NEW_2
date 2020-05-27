//
//  ProductCell.swift
//  Products_App_NEW_2
//
//  Created by Viktor Smirnov on 26.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit
import SDWebImage

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var descriptionProductLabel: UILabel!
    @IBOutlet weak var costProductLabel: UILabel!
    
    static let reuseIdentifier = "ProductCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
    }
    
    func setup(product: Product?) {
        guard let product = product else { return }
        nameProductLabel.text = product.name
        descriptionProductLabel.text = product.description
        costProductLabel.text = product.cost
//        productImageView.image = product.name
        
        
    }
}
