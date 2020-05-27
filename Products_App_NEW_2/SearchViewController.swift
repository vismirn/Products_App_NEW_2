//
//  SearchViewController.swift
//  Products_App_NEW_2
//
//  Created by Viktor Smirnov on 26.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    let searchController = UISearchController(searchResultsController: nil)
    let tableView = UITableView(frame: .zero, style: .plain)
    var timer: Timer?
    
    var products = [
        Product(name: "Яблоко", description: "", cost: "10", image: ""),
        Product(name: "Апельсин", description: "", cost: "20", image: ""),
        Product(name: "Авокадо", description: "", cost: "5", image: ""),
        Product(name: "Лимон", description: "", cost: "3", image: ""),
        Product(name: "Банан", description: "", cost: "36", image: ""),
        Product(name: "Помидор", description: "", cost: "45", image: "")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        setupElements()
        setupConstraints()
    }
    
}
//MARK: - Setup View

extension SearchViewController {
    func setupElements() {
        
        title = "Search"
        view.backgroundColor = .cyan
        searchController.searchBar.barTintColor = .black
        
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(UITableViewCell, forCellReuseIdentifier: "ProductCell")
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: ProductCell.reuseIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
}
//MARK: - Setup Constraints

extension SearchViewController {
    func setupConstraints() {

        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true

    }
}
//MARK: - UITableViewDelegate, UITableViewDataSource

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductCell.reuseIdentifier, for: indexPath) as! ProductCell
        let product = products[indexPath.row]
        
        cell.setup(product: product)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
//        let product = myProducts?.results[indexPath.row]
        let productVC = ProductViewController()
        
        present(productVC, animated: true, completion: nil)
        
    }

}
