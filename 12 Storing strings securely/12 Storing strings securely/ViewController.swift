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
        print(secureStore(string: "Siddharth1", key: "Kothari"))
    }

    func secureStore(string: String, key: String) -> Bool {
        guard !string.isEmpty && !key.isEmpty else {
            return false
        }
        let foundItem = retrieveItem(key: key)
        
        if foundItem == nil {
            print("No previous value found")
            let queryDict: [String : Any] = [kSecClass as String: kSecClassGenericPassword,
                                             kSecValueData as String: string.data(using: .utf8)!,
                                             kSecAttrAccount as String: key.data(using: .utf8)!]
            let status = SecItemAdd(queryDict as CFDictionary, nil)
            guard status == errSecSuccess else {
                print("SecItemAdd failed : \(SecCopyErrorMessageString(status, nil) as? String ?? "unknown")")
                return false
            }
            return true
        }
        else if foundItem != string {
            print("Previous item found but not matching string")
            let updateQueryDict: [String : Any] = [kSecClass as String: kSecClassGenericPassword,
                                             kSecAttrAccount as String: key.data(using: .utf8)!]
            let attributesToUpdate: [String : Any] = [kSecValueData as String: string.data(using: .utf8)!]
            
            let status = SecItemUpdate(updateQueryDict as CFDictionary, attributesToUpdate as CFDictionary)
            
            guard status == errSecSuccess else {
                print("SecItemUpdate failed : \(SecCopyErrorMessageString(status, nil) as? String ?? "unknown")")
                return false
            }
            return true
            
        }
        
        return false
    }

    func retrieveItem(key: String) -> String? {
        let queryDict: [String : Any] = [kSecClass as String: kSecClassGenericPassword,
                                         kSecAttrAccount as String: key.data(using: .utf8)!,
                                         kSecReturnData as String: true]
        var item: CFTypeRef?
        let status = SecItemCopyMatching(queryDict as CFDictionary, &item)
        
        guard status == errSecSuccess, let data = item as? Data else {
            print("SecItemAdd failed : \(SecCopyErrorMessageString(status, nil) as? String ?? "unknown")")
            return nil
        }
        print("value found")
        return String(data: data, encoding: .utf8)
    }
}

