//
//  Hash.swift
//  MarvelApp
//
//  Created by Miguel Bragado Sánchez on 24/7/21.
//

import Foundation
import CommonCrypto
import func CommonCrypto.CC_MD5

func MD5(string: String) -> String {
    if let strData = string.data(using: String.Encoding.utf8) {
        
        var hash = [UInt8](repeating: 0, count:Int(CC_MD5_DIGEST_LENGTH))
        
        strData.withUnsafeBytes {
            
            CC_MD5($0.baseAddress, UInt32(strData.count), &hash)
            
            //_ = CC_SHA256($0.baseAddress, UInt32(strData.count), &hash)
        }
        //print(hash)
        var md5String = ""
        /// Unpack each byte in the digest array and add them to the md5String
        for byte in hash {
            md5String += String(format:"%02x", UInt8(byte))
        }
        
        return md5String
    }
    return ""
}
