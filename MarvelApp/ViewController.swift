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
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
            cell?.textLabel?.font = UIFont.systemFont(ofSize: 20)
        }
        
        cell?.textLabel?.text = characters[indexPath.row].name
        return cell!
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
}


