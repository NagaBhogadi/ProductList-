//
//  MockNetworkManager.swift
//  ProductList
//
//  Created by Naga Rajitha Bhogadi on 6/9/26.

import Foundation

final class MockNetworkManager: NetworkProtocol {
    static let sharedInstance = MockNetworkManager()
    private init() { }
    
    func getDataFromServer(for url: String) -> [ProductModel] {
        var productList: [ProductModel] = []
        let product1 = ProductModel(nameProduct: "iPhone",
                                    priceProduct: "$1500")
        let product2 = ProductModel(nameProduct: "Mac",
                                    priceProduct: "$2000")
        
        productList.append(product1)
        productList.append(product2)
        
        return productList
    }
}
