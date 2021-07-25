//
//  Util.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 24/7/21.
//

import Foundation

func getURL() -> URL {
    let timeStamp = Int(Date().timeIntervalSince1970)
    print("TimeStamp: \(timeStamp)")
    let hashtoken = MD5(string: "\(timeStamp)" + privateKey + publicKey)
    
    print("hashtoken: \(hashtoken)")
    let queryString = "?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(hashtoken)"
    
    let url = URL(string: "https://gateway.marvel.com:443/v1/public/characters" + queryString)!
    print(url)
    return url
}
