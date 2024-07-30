//
//  Product.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Foundation

struct Product: Codable, Hashable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let price: Float
    let imagesUrls: [URL]
    let categoryId: String
    let creationDate: Date
    let updateDate: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case imagesUrls = "images_urls"
        case categoryId = "category"
        case creationDate = "creation_date"
        case updateDate = "update_date"
    }
}
