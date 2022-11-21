//
//  ModelJoke.swift
//  Networking
//
//  Created by Eвгений Павлюков on 21.11.2022.
//

import Foundation // 2 после создания модели надо распарсить пришедшие данные

struct ModelJoke: Codable {
    let error: Bool?
    let category: String?
    let type: String?
    let setup: String?
    let delivery: String?
    let flags: ModelJokeFlags?
    let safe: Bool?
    let id: Int?
    let lang: String?
}

struct ModelJokeFlags: Codable {
    let explicit, religious, nsfw, political, racist, sexist: Bool?
}
