//
//  CharacterTableViewCell.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 25/7/21.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.roundCell()
        characterImageView.imageList()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
    }


}
