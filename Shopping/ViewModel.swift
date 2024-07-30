//
//  ViewModel.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Observation

@Observable
final class ViewModel {
    var productsLogic: ProductsLogic
    var categoriesLogic: CategoriesLogic
    
    init(
        productsLogic: ProductsLogic = .shared,
        categoriesLogic: CategoriesLogic = .shared
    ) {
        self.productsLogic = productsLogic
        self.categoriesLogic = categoriesLogic
    }
}
