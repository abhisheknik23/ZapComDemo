//
//  AppDelegate.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 06/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import Foundation
struct Content : Codable {
	let sectionType : String?
	let name : String?
	let products : [Products]?
    let bannerImage: String?
    let firstImage: String?
    let secondImage: String?

	init(sectionType : String?, name : String?, products : [Products]?, firstImage: String?, secondImage: String?, bannerImage: String?){
		self.sectionType = sectionType
        self.name = name
        self.products = products
        self.firstImage = firstImage
        self.secondImage = secondImage
        self.bannerImage = bannerImage
	}

}
