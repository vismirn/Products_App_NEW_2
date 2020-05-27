//
//  ProductViewController.swift
//  products_App_2_ekr
//
//  Created by Viktor Smirnov on 26.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    @IBOutlet weak var imageProductImage: UIImageView!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var descriptionProductLabel: UILabel!
    @IBOutlet weak var costProductLabel: UILabel!
    
    
    let nameProduct = UILabel()
    let descriptionProduct = UILabel()
    let costProduct = UILabel()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupElements()
        setupConstraints()
    }
}

//MARK: - Setup View
extension ProductViewController {
    func setupElements() {
        view.backgroundColor = .green
    
        
    }
}
//MARK: - Setup Constraints

extension ProductViewController {
    func setupConstraints() {

        nameProduct.translatesAutoresizingMaskIntoConstraints = false
        descriptionProduct.translatesAutoresizingMaskIntoConstraints = false
        costProduct.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(nameProduct)
        view.addSubview(descriptionProduct)
        view.addSubview(costProduct)

        
        NSLayoutConstraint.activate([
            nameProduct.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            nameProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameProduct.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
    }
    
}
