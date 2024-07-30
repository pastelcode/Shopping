//
//  PreviewPersistence.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Foundation

struct PreviewPersistence: PersistenceInteractor {
    private var productsURL: URL {
        Bundle.main.url(forResource: "ProductsPreview", withExtension: "json")!
    }
    
    private var categoriesURL: URL {
        Bundle.main.url(forResource: "CategoriesPreview", withExtension: "json")!
    }
    
    func loadCategories() throws -> [Category] {
        let data = try Data(contentsOf: categoriesURL)
        return try JSONDecoder().decode([Category].self, from: data)
    }
    
    func loadProducts() throws -> [Product] {
        let data = try Data(contentsOf: productsURL)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}

extension Product {
    static let forPreview = Product(
        id: UUID(),
        name: "Classic Comfort Fit Joggers",
        description: "Discover the perfect blend of style and comfort with our Classic Comfort Fit Joggers. These versatile black joggers feature a soft elastic waistband with an adjustable drawstring, two side pockets, and ribbed ankle cuffs for a secure fit. Made from a lightweight and durable fabric, they are ideal for both active days and relaxed lounging.",
        price: 253.55,
        imagesUrls: [
            URL(string: "https://i.imgur.com/ZKGofuB.jpeg")!,
            URL(string: "https://i.imgur.com/GJi73H0.jpeg")!,
            URL(string: "https://i.imgur.com/633Fqrz.jpeg")!,
        ],
        categoryId: UUID(),
        creationDate: .now,
        updateDate: .now
    )
}

extension Category {
    static let forPreview = Category(
        id: UUID(),
        name: "clothes",
        coverUrl: URL(string: "https://i.imgur.com/QkIa5tT.jpeg")!,
        creationDate: .now,
        updateDate: .now
    )
}
