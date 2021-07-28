//
//  TableViewCellExtension.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 26/7/21.
//

import Foundation
import UIKit

extension UITableViewCell {
    
    func roundCell() {
        layer.cornerRadius = 10
        layer.backgroundColor = UIColor.systemRed.cgColor
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
    }
}
