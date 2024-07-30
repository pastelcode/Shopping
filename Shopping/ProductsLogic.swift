//
//  ProductsLogic.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Observation

@Observable
final class ProductsLogic {
    static let shared = ProductsLogic()
    
    let persistence: PersistenceInteractor
    
    var products: [Product]
    
//    ERROR FIELDS
    var showErrorAlert = false
    var errorMessage: String? = nil
    
    init(persistence: PersistenceInteractor = Persistence()) {
        self.persistence = persistence
        do {
            self.products = try persistence.loadProducts()
        } catch {
            self.products = []
            self.errorMessage = error.localizedDescription
            self.showErrorAlert.toggle()
        }
    }
}
