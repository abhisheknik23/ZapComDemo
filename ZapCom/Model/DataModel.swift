//
//  AppDelegate.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 06/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import Foundation
struct DataModel : Codable {
	let code : String?
	let content : [Content]?
    
	init(code : String?, content : [Content]?){
		self.code = code
        self.content = content
	}

}
