//
//  ViewController.swift
//  ProductList
//
//  Created by Naga Rajitha Bhogadi on 6/2/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var ProductTable: UITableView!
    
    var productList: [ProductModel] = []
    var isInternetAvailable = false
    var objNetworkManager: NetworkProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProductTable.delegate = self
        ProductTable.dataSource = self
        
        if isInternetAvailable {
            objNetworkManager = NetworkManager.sharedInstance
        } else {
            objNetworkManager = MockNetworkManager.sharedInstance
        }
        
        productList = objNetworkManager?.getDataFromServer(for: "https://serveraddress.com") ?? []
        
        ProductTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "XYZ") as? ProductCell
        
        let product = productList[indexPath.row]
        cell?.productName.text = product.nameProduct
        cell?.productPrice.text = product.priceProduct
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        print(productList[indexPath.row].nameProduct)
    }
}

