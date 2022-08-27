//
//  Alert.swift
//  Map
//
//  Created by Nuraly Amanayev on 8/2/22.
//

import Foundation
import UIKit

extension ViewController{
    func alertAddAdress(title: String, placeholder: String, completionHandler: @escaping(String) -> Void) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "OK", style: .default){ (action) in
            let tfText = alertController.textFields?.first
            guard let text = tfText?.text else {return}
            completionHandler(text)
        }
        
        alertController.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let alertCancel = UIAlertAction(title: "Отмена", style: .default){ (_) in }
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertError(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "ОК", style: .default)
        
        alertController.addAction(alertOk)
        present(alertController, animated: true, completion: nil)
    }    
}
