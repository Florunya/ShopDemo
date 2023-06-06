//
//  CartManager.swift
//  ShopDemo
//
//  Created by Флора Гарифуллина on 09.11.2022.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    @Published var searchTerm = ""
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id}
        total -= product.price
    }
    
    var filteredSweaters: [Product]{
        guard !searchTerm.isEmpty else { return productList}
        return productList.filter{$0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
}
