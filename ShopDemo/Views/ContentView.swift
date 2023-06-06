//
//  ContentView.swift
//  ShopDemo
//
//  Created by Флора Гарифуллина on 09.11.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(cartManager.filteredSweaters, id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    CartButton(numberOfProduct: cartManager.products.count)
                }
            }
            .searchable(text: $cartManager.searchTerm, prompt: "Search Sweater")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
