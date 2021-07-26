//
//  Image.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 23/7/21.
//

import Foundation

struct Image: Codable {
    let path: String?
    let ext: String?
    
    func getImage() -> URL? {
        if let path = path {
            return URL(string: "\(securePath(path: path)).jpg")
        }
        return nil
    }
    
    func securePath(path:String) -> String {
            if path.hasPrefix("http://") {
                let range = path.range(of: "http://")
                var newPath = path
                newPath.removeSubrange(range!)
                return "https://" + newPath
            } else {
                return path
            }
        }
}
