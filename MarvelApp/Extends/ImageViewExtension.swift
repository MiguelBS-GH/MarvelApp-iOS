//
//  ImageViewExtension.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 26/7/21.
//

import UIKit
import Foundation

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            }
        }
    }
    
    func imageList() {
        round()
        layer.borderColor = UIColor.white.cgColor
        clipsToBounds = true
    }
    
    func imageDetail() {
        round()
        layer.borderColor = UIColor.systemBlue.cgColor
        clipsToBounds = true
    }
    
    func round() {
        layer.cornerRadius = 10
        layer.borderWidth = 2
    }
}
