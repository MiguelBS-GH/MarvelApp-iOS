//
//  ResponseDataModel.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 24/7/21.
//

import Foundation

struct CharacterBaseDate: Codable {
    let data: CharacterDataSource?
}

struct CharacterDataSource: Codable {
    let results: [Character]?
}
