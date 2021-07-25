//
//  Heroe.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 23/7/21.
//

import Foundation

struct Character: Codable {
    var id: Int?
    var name: String?
    var description: String?
    var resourceURI: String?
    var thumbnail: Image?
    var comics: Comics?
}
