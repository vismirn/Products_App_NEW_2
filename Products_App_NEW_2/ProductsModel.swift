//
//  ProductsModel.swift
//  products_App_2_ekr
//
//  Created by Viktor Smirnov on 26.05.2020.
//  Copyright © 2020 Viktor Smirnov. All rights reserved.
//

import Foundation

struct Product: Decodable {
    var name: String
    var description: String
    var cost: String
    var image: String
}
