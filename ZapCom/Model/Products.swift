//
//  AppDelegate.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 06/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import Foundation
struct Products : Codable {
	let name : String
	let price : String
	let imageURL : String
	let type : String



	init(name : String, price : String, imageURL : String, type : String){
		self.name = name
        self.price = price
        self.imageURL = imageURL
        self.type = type
	}

}
