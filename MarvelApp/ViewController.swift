//
//  ViewController.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 23/7/21.
//

import UIKit
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG
import CryptoKit

class ViewController: UIViewController {

    @IBOutlet weak var characterTableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private var characters: [Character] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hola")
        
        characterTableView.dataSource = self
        characterTableView.delegate = self
        
        //registerTableViewCells()
        
        activityIndicator.startAnimating()
        recuperarDatos()
    }
    
    func recuperarDatos() {
        allCharacters(success: { characters in
            print("Estoy por aqui")
            self.characters = characters
            print("Salí")
            DispatchQueue.main.async {
                self.characterTableView.reloadData()
                self.activityIndicator.isHidden = true
                self.activityIndicator.stopAnimating()
            }
        })
       
    }
    
    func registerTableViewCells() {
        let cell = UINib(nibName: "CharacterTableViewCell", bundle: nil)
        self.characterTableView.register(cell, forCellReuseIdentifier: "CharacterTableViewCell")
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as! CharacterTableViewCell
        
        let character = characters[indexPath.row]
        cell.characterNameLabel.text = character.name
        if let image = character.thumbnail?.getImage() {
            print("dentro")
            cell.characterImageView.load(url: image)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(120)
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
}

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
}


