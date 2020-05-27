//
//  ProductViewController.swift
//  products_App_2_ekr
//
//  Created by Viktor Smirnov on 26.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    
    let nameProduct = UILabel()
    var descriptionProduct = UILabel()
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
        view.backgroundColor = .white
        
        nameProduct.text = "Name"
        descriptionProduct.text = "Description"
        costProduct.text = "Cost"
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let destinationVC = segue.destination as? ProductViewController else { return }
//??        destinationVC.nameProduct = IndexPath
    }
    
}
//MARK: - Setup Constraints

extension ProductViewController {
    func setupConstraints() {
        
        let stackView = UIStackView(arrangedSubviews: [nameProduct, descriptionProduct, costProduct])
        stackView.axis = .vertical
        stackView.spacing = 40
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        

        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
    }
    
}
