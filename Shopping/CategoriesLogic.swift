//
//  CategoriesLogic.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Observation

@Observable
final class CategoriesLogic {
    static let shared = CategoriesLogic()
    
    let persistence: PersistenceInteractor
    
    var categories: [Category]?
    
//    ERROR FIELDS
    var showErrorAlert = false
    var errorMessage: String? = nil
    
    init(persistence: PersistenceInteractor = Persistence()) {
        self.persistence = persistence
        do {
            self.categories = try persistence.loadCategories()
        } catch {
            self.categories = nil
            self.errorMessage = error.localizedDescription
            self.showErrorAlert.toggle()
        }
    }
}
