//
//  ProductsGrid.swift
//  Shopping
//
//  Created by Samuel Marroquín on 3/08/24.
//

import SwiftUI

struct ProductsGrid: View {
    @Environment(ViewModel.self) private var viewModel
    
    @State private var animateSymbol = false
    
    var body: some View {
        if let products = viewModel.productsLogic.products {
            LazyVGrid(columns: [.init(spacing: 10), .init(spacing: 10)], spacing: 30) {
                ForEach(products) { product in
                    ProductCard(product: product)
                        .frame(height: 300)
                }
            }
        } else {
            ContentUnavailableView(
                "Couldn't fetch categories",
                systemImage: "exclamationmark.circle",
                description: Text("There was an error fetching categories. Please try again.\nDescription: \(viewModel.categoriesLogic.errorMessage!)")
            )
            .symbolRenderingMode(.multicolor)
            .symbolEffect(.bounce, value: animateSymbol)
            .onAppear {
                animateSymbol.toggle()
            }
        }
    }
}

#Preview {
    ScrollView {
        ProductsGrid()
    }
    .environment(ViewModel.preview)
}
