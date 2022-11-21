//
//  Albums.swift
//  APIManager
//
//  Created by Eвгений Павлюков on 21.11.2022.
//

import Foundation

// MARK: - Album
struct Album: Codable {
    let userID, id: Int?
    let title: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title
    }
}

typealias Albums = [Album]
