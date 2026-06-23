//
//  NetWorkProtocol.swift
//  ProductList
//
//  Created by Naga Rajitha Bhogadi on 6/9/26.
//

import Foundation

protocol NetworkProtocol {
    func getDataFromServer(for url: String) -> [ProductModel]
}


final class NetworkManager: NetworkProtocol {
    static let sharedInstance = NetworkManager()
    private init() { }
    func getDataFromServer(for url: String) -> [ProductModel] {
        // Real API later
        return []
    }
}
