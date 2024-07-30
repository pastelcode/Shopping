//
//  Category.swift
//  Shopping
//
//  Created by Samuel Marroquín on 29/07/24.
//

import Foundation

struct Category: Codable, Hashable, Identifiable {
    let id: UUID
    let name: String
    let coverUrl: URL
    let creationDate: Date
    let updateDate: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case coverUrl = "cover_url"
        case creationDate = "creation_date"
        case updateDate = "update_date"
    }
}
