//
//  ProductModel.swift
//  ShopDemo
//
//  Created by Флора Гарифуллина on 09.11.2022.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Green sweater", image: "sweater1", price: 54),
                   Product(name: "Ohra sweater", image: "sweater2", price: 74),
                   Product(name: "White sweater", image: "sweater3", price: 68),
                   Product(name: "Cool sweater", image: "sweater4", price: 78),
                   Product(name: "Another green sweater", image: "sweater5", price: 49),
                   Product(name: "Red wine sweater", image: "sweater6", price: 74),
                   Product(name: "Vegan sweater", image: "sweater7", price: 68)]
