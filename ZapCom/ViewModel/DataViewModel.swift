//
//  DataViewModel.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 13/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import Foundation

struct DataViewModel {
    
    let content: Content
}

extension DataViewModel {
    
    var sectionType: String {
        return content.sectionType!
    }
    
    var name: String {
        
        return content.name!
    }
    
    var product: Array<Any> {
        return content.products!
    }
    
    var bannerImage: String {
        return content.bannerImage!
    }
    
    var firstImage: String {
        return content.firstImage!
    }
    
    var secondImage: String {
        return content.secondImage!
    }
}

