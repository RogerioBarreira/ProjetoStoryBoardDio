//
//  Pizza.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation

// MARK: - PizzaElement
struct PizzaElement: Codable {
    let id, name: String?
    let imageURL: String?
    let rating: Int?
    let priceP, priceM, priceG: Double?

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
        case rating, priceP, priceM, priceG
    }
}

typealias Pizza = [PizzaElement]

