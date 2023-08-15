//
//  ViewController.swift
//  12 Storing strings securely
//
//  Created by Siddharth Kothari on 15/08/23.
//

import UIKit
import Foundation
import Security

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(secureStore(string: "Siddharth", key: "Kothari"))
    }

    func secureStore(string: String, key: String) -> Bool {
        guard !string.isEmpty && !key.isEmpty else {
            return false
        }
        
        let queryDict: [String : Any] = [kSecClass as String: kSecClassGenericPassword,
                                         kSecValueData as String: string.data(using: .utf8)!,
                                         kSecAttrAccount as String: key.data(using: .utf8)!]
        
        let status = SecItemAdd(queryDict as CFDictionary, nil)
        
        guard status == errSecSuccess else {
            return false
        }
        return true
    }

}

