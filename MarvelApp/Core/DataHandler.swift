//
//  datahandler.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 24/7/21.
//

import Foundation

func allCharacters(success: @escaping(_ characters: [Character]) -> ()) {
    
    var characters: [Character] = []
    
    let task = URLSession.shared.dataTask(with: getURL()) { data, response, error in
        if let error = error {
            fatalError("Error: \(error.localizedDescription)")
        }
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            fatalError("Error http statuscode \(response!)")
        }
        guard let data = data else {
            fatalError("Error: missing response data")
        }
        let decoder = JSONDecoder()
        do {
            
            let jsonobj = try JSONSerialization.jsonObject(with: data, options: [])
            let x = try decoder.decode(CharacterBaseDate.self, from: JSONSerialization.data(withJSONObject: jsonobj, options: []))
            if let r = x.data?.results {
                for c in r {
                    print("\(c.name ?? "- - - -")")
                }
                characters = r
                success(characters)
            }
        }
        catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    task.resume()
    

    
}
