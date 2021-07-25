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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("hola")
        
        allCharacters()
    }
}

