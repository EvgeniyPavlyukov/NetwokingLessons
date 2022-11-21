//
//  PostsModel.swift
//  APIManager
//
//  Created by Eвгений Павлюков on 21.11.2022.
//

import Foundation

// MARK: - Post
struct Post: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias Posts = [Post]
