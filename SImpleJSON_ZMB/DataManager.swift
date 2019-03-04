//
//  DataManager.swift
//  SImpleJSON_ZMB
//
//  Created by Zane Burton on 3/4/19.
//  Copyright © 2019 Zane Burton. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    func getData() {
        let urlString = "https://api.myjson.com/bins/cgiym"
        let actualURL = URL(string: urlString)
        let session = URLSession.shared
        let task = session.dataTask(with: actualURL!) { (data, response, error) in
            
            if error != nil {
                //handle the error
            }
            
            if let successfulData = data {
                print(String(data: successfulData, encoding: String.Encoding.ascii))
            }
            
        }
        task.resume()
        
    }
    
}
