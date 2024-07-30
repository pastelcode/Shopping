//
//  PersistenceInteractor.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Foundation

protocol PersistenceInteractor {
    func loadCategories() throws -> [Category]
    func loadProducts() throws -> [Product]
}

struct Persistence: PersistenceInteractor {
    func loadCategories() throws -> [Category] {
        <#code#>
    }
    
    func loadProducts() throws -> [Product] {
        <#code#>
    }
    
    
}
