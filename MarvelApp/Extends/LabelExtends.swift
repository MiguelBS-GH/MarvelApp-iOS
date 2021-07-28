//
//  LabelExtends.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 26/7/21.
//

import Foundation
import UIKit

extension UILabel {
    
    func title() {
        round()
        layer.borderColor = UIColor.systemBlue.cgColor
        layer.backgroundColor = UIColor.white.cgColor
    }
    
    func description() {
        round()
        layer.borderColor = UIColor.systemBlue.cgColor
        layer.backgroundColor = UIColor.white.cgColor
    }
    
    func round() {
        layer.cornerRadius = 10
        layer.borderWidth = 2
    }
    
}
