//
//  CharacterDetailViewController.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 26/7/21.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    @IBOutlet weak var characterDetailNameLabel: UILabel!
    @IBOutlet weak var characterDetailImageView: UIImageView!
    @IBOutlet weak var characterDetailDescriptionLabel: UILabel!
    
    var name: String? = "Character name"
    var imageURL: URL?
    var characterDescription: String? = "Description..."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        characterDetailNameLabel.text = name
        characterDetailDescriptionLabel.text = characterDescription
        if let url = imageURL {
            characterDetailImageView.load(url: url)
        }
        characterDetailNameLabel.title()
        characterDetailImageView.imageDetail()
    }

}
