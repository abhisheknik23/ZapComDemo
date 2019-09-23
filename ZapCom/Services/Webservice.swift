//
//  Webservice.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 13/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import Foundation

struct Constant {
    static let BASEURL = "https://api.myjson.com/bins/chou4"
}

class Webservice {
    
    func loadData(url: URL, completion: @escaping ([Content]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                do{
                    let contentList = try JSONDecoder().decode(DataModel.self, from: data)
                    completion(contentList.content)
                }catch let jsonError{
                    print(jsonError)
                }
            }
            }.resume()
    }
}
