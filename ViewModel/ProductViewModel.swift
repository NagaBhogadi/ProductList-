//
//  ProductViewModel.swift
//  PostProject
//
//  Created by Naga Rajitha Bhogadi on 6/24/26.
//

import Foundation

protocol ProductViewModelProtocol: AnyObject {
    func fetchProducts(completion: @escaping() -> Void)
    func numberOfPost()-> Int
    func post(at index: Int) -> Post

    
}

class ProductViewModel: ProductViewModelProtocol {
    

    private var products: [Post] = []
    
    // MARK: - API Call
    
    func fetchProducts(completion: @escaping() -> Void) {
        
        NetworkManager.shared.fetchDataFrom(serverUrl: APIConstants.smartphonesURL){
            [weak self] fetchedProducts in
            defer {
                completion()
            }
            guard let self = self else { return }
            self.products = fetchedProducts
            completion()
        }
    }
// MARK:- Helper Method
    
func numberOfPost() -> Int {
            return products.count
        }
func post(at index: Int) -> Post {
            return products[index]
        }
}

